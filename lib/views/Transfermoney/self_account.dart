import 'package:flutter/material.dart';
class SelfAccountPage extends StatelessWidget {
  const SelfAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Self Account Page')),
      body: const Center(child: Text('This is the Self Account Page')),
    );
  }
}