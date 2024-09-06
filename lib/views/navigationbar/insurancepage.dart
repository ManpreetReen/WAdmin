import 'package:flutter/material.dart';
class InsurancePage extends StatelessWidget{
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insurance App'),
      ),
      body: const Center(
        child:
            Text('Welcome to the Insurance App'),
        ),

    );
  }
}