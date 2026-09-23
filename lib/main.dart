import 'package:flutter/material.dart';
import 'package:meu_campus/aviso_modal.dart';
import 'tela_disciplina.dart';

void main() {
  runApp(const MeuCampusApp());
}

class MeuCampusApp extends StatelessWidget {
  const MeuCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicio(),
    );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Campus'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagem com bordas arredondadas
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/campus.jpg',
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Olá, estudante!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'O que você quer consultar?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              Card(
                color: Colors.blue.shade50,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Próxima aula'),
                      SizedBox(height: 8),
                      Text(
                        'Computação Móvel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Hoje • 19h • Sala 204'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDisciplina(),
                    ),
                  );
                },
                // Estilo para garantir o fundo azul e itens brancos
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                icon: const Icon(Icons.menu_book),
                label: const Text('Ver disciplina'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  // CORRIGIDO: Agora usa showModalBottomSheet em vez de Navigator.push
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    showDragHandle: true, // Exibe a barrinha cinza no topo
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    builder: (context) => const AvisoModal(),
                  );
                },
                child: const Text('Ver aviso'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}