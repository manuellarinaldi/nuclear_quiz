import 'package:flutter/material.dart';
import '../models/models.dart';
import 'quiz_screen.dart';

class DetalheScreen extends StatefulWidget {
  final Conteudo conteudo;
  final Categoria categoria;
  final Jogador jogador;
  const DetalheScreen({
    super.key,
    required this.conteudo,
    required this.categoria,
    required this.jogador,
  });

  @override
  State<DetalheScreen> createState() => _DetalheScreenState();
}

class _DetalheScreenState extends State<DetalheScreen> {
  bool _favorito = false;

  void _alternarFavorito() {
    setState(() => _favorito = !_favorito);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_favorito ? 'Adicionado aos favoritos' : 'Removido dos favoritos'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final c = widget.conteudo;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoria.nome),
        actions: [
          IconButton(
            icon: Icon(_favorito ? Icons.favorite : Icons.favorite_border),
            onPressed: _alternarFavorito,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: widget.categoria.cor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(widget.categoria.icone, size: 64, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(c.titulo, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Text(c.texto, style: const TextStyle(fontSize: 16, height: 1.5)),
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.quiz),
              label: const Text('Testar meus conhecimentos'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => QuizScreen(categoria: widget.categoria, jogador: widget.jogador),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}