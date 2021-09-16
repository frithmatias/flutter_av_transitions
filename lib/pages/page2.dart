import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.lime,
      body: Center(
        child: MaterialButton(  
          child: const Text('Ir a página 1'),
          color: Colors.white, 
          onPressed: (){
          
            Navigator.pushReplacementNamed(context, 'page1');
          
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
        elevation: 1,
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'page1');
        },
      ),
    );
  }
}
