import 'package:flutter/material.dart';
class LoanPage extends StatelessWidget{
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan'),
      ),
      body: const Center(
        child:
        Text('Welcome to the Loan App'),
      ),

    );
  }
}