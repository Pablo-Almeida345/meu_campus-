import 'package:flutter/material.dart';

class TelaDisciplina extends StatelessWidget {
  const TelaDisciplina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disciplina'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Computação Móvel'),
      ),
    );
  }
}