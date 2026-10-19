import 'package:flutter/material.dart';
import '../models/models.dart';
import 'quiz_screen.dart';

class ResultadoScreen extends StatelessWidget {
  final Categoria categoria;
  final Jogador jogador;
  final int pontos;
  final int total;
  const ResultadoScreen({
    super.key,
    required this.categoria,
    required this.jogador,
    required this.pontos,
    required this.total,
  });

  String get _mensagem {
    final pct = pontos / total;
    if (pct == 1) return 'Perfeito! Você é um(a) especialista!';
    if (pct >= 0.6) return 'Muito bem! Você já conhece bastante.';
    return 'Continue explorando os conteúdos e tente de novo!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado'), automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              pontos / total >= 0.6 ? Icons.emoji_events : Icons.menu_book,
              size: 96,
              color: categoria.cor,
            ),
            const SizedBox(height: 16),
            Text(
              '${jogador.nome}, você acertou',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              '$pontos de $total',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(_mensagem, textAlign: TextAlign.center),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => QuizScreen(categoria: categoria, jogador: jogador),
                ),
              ),
              child: const Text('Jogar novamente'),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
              child: const Text('Voltar às categorias'),
            ),
          ],
        ),
      ),
    );
  }
}