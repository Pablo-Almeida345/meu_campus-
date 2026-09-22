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
      body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.phone_android,
            size: 80,
            color: Colors.blue,
          ),
          const SizedBox(height: 16),
          const Text(
            'Computação Móvel',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Construção de interfaces com Flutter',
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 24),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Professor: Felipe'),
                  Divider(),
                  Text('Dia: terça-feira'),
                  Divider(),
                  Text('Horário: 19h'),
                  Divider(),
                  Text('Sala: 204'),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar ao início'),
          ),

        ],
      ),
    ),
    );
  }
}
