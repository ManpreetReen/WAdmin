import 'package:flutter/material.dart';

class CheckBalancePage extends StatelessWidget {
  const CheckBalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check Balance Page')),
      body: const Center(child: Text('This is the Check Balance Page')),
    );
  }
}