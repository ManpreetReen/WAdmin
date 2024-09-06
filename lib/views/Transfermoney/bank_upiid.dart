import 'package:flutter/material.dart';
class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bank/UPI Page')),
      body: const Center(child: Text('This is the Bank/UPI Page')),
    );
  }
}