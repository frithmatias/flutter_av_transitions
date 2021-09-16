import 'package:custom_transition_route/pages/page1.dart';
import 'package:custom_transition_route/pages/page2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1' : (_) => const Page1Page(),
        'page2' : (_) => const Page2Page(), 

      }
    );
  }
}