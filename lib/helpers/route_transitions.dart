import 'package:flutter/material.dart';

enum AnimationType {normal, fadeIn, fadeOut}

class CrabDevsTransitions {
   
  final BuildContext context;
  final Widget child;
  final AnimationType? animation;
  final Duration? duration;
  final bool? replacement;

  CrabDevsTransitions({
    required this.context, 
    required this.child, 
    this.duration = const Duration(milliseconds: 500),
    this.animation = AnimationType.fadeIn, 
    this.replacement = false
  }) {

    switch( animation ) {
      case AnimationType.normal:
        _normalTransition();
      break;
      case AnimationType.fadeIn:
        _fadeInTransition();
      break;
      case AnimationType.fadeOut:
      break;
      case null: 
      break;
    }

  }

  void _normalTransition() {
    final route = MaterialPageRoute(builder: (_) => child);
        replacement!
    ? Navigator.pushReplacement(context, route) 
    : Navigator.push( context, route);
  }
  
  void _fadeInTransition() {

    final route = PageRouteBuilder(
          pageBuilder: ( 
            BuildContext context, 
            Animation<double> animation, 
            Animation<double> secondaryAnimation 
          ) => child,
          transitionDuration: duration!,
          transitionsBuilder: (context, animation, _, childss) => FadeTransition(
              child: childss,
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.easeOut)
              )
          )
        );


    replacement!
    ? Navigator.pushReplacement(context, route) 
    : Navigator.push( context, route);
  }

}