import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/models.dart';
import 'detalhe_screen.dart';
import 'quiz_screen.dart';

class ListaConteudosScreen extends StatelessWidget {
  final Categoria categoria;
  final Jogador jogador;
  const ListaConteudosScreen({super.key, required this.categoria, required this.jogador});

  @override
  Widget build(BuildContext context) {
    final lista = conteudos.where((c) => c.categoriaId == categoria.id).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoria.nome)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lista.length,
        itemBuilder: (context, i) {
          final c = lista[i];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: categoria.cor,
                child: Icon(categoria.icone, color: Colors.white),
              ),
              title: Text(c.titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(c.resumo),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetalheScreen(conteudo: c, categoria: categoria, jogador: jogador),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: categoria.cor,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.quiz),
        label: const Text('Iniciar quiz'),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => QuizScreen(categoria: categoria, jogador: jogador),
          ),
        ),
      ),
    );
  }
}