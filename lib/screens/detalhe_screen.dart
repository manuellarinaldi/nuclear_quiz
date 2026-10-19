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
  bool _mostrarCuriosidade = false;

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
    final cor = widget.categoria.cor;

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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: cor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(widget.categoria.icone, size: 64, color: Colors.white),
                ),
                const SizedBox(height: 16),
                Text(c.titulo, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(c.resumo, style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
                const SizedBox(height: 16),
                for (final p in c.paragrafos)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(p, style: const TextStyle(fontSize: 16, height: 1.5)),
                  ),
                const SizedBox(height: 4),
                Card(
                  color: cor.withOpacity(0.12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.lightbulb, color: cor),
                            const SizedBox(width: 8),
                            const Expanded(
                              child: Text(
                                'Você sabia?',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(
                                () => _mostrarCuriosidade = !_mostrarCuriosidade,
                              ),
                              child: Text(_mostrarCuriosidade ? 'Ocultar' : 'Mostrar'),
                            ),
                          ],
                        ),
                        if (_mostrarCuriosidade)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(c.curiosidade, style: const TextStyle(fontSize: 15, height: 1.4)),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.quiz),
              label: const Text('Testar meus conhecimentos'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => QuizScreen(categoria: widget.categoria, jogador: widget.jogador),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}