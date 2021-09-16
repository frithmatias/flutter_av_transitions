import 'package:custom_transition_route/helpers/route_transitions.dart';
import 'package:custom_transition_route/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          child: const Text('Ir a página 2'),
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'page2');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
        elevation: 1,
        onPressed: () {
          CrabDevsTransitions(
              context: context,
              child: const Page2Page(),
              duration: const Duration(milliseconds: 1000),
              animation: AnimationType.fadeIn,
              replacement: true);
        },
      ),
    );
  }
}
