import 'package:flutter/material.dart';
class WealthPage extends StatelessWidget{
  const WealthPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wealth'),
      ),
      body: const Center(
        child:
        Text('Welcome to the App'),
      ),

    );
  }
}