import 'package:flutter/material.dart';

class AvisoModal extends StatelessWidget {
  const AvisoModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.info_outline,
              size: 56,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            const Text(
              'Aviso da turma',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),
            const Text(
              'Traga seu notebook para a próxima aula.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Fechar'),
            ),
          ],
        ),
      ),
    );
  }
}