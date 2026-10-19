import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/models.dart';
import 'resultado_screen.dart';

class QuizScreen extends StatefulWidget {
  final Categoria categoria;
  final Jogador jogador;
  const QuizScreen({super.key, required this.categoria, required this.jogador});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<Pergunta> _perguntas;
  int _indice = 0;
  int _pontos = 0;
  int? _selecionada; // null = ainda não respondeu

  @override
  void initState() {
    super.initState();
    _perguntas = perguntas.where((p) => p.categoriaId == widget.categoria.id).toList();
  }

  void _responder(int opcao) {
    if (_selecionada != null) return; // evita responder duas vezes
    setState(() {
      _selecionada = opcao;
      if (opcao == _perguntas[_indice].correta) _pontos++;
    });
  }

  void _proxima() {
    if (_indice < _perguntas.length - 1) {
      setState(() {
        _indice++;
        _selecionada = null;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultadoScreen(
            categoria: widget.categoria,
            jogador: widget.jogador,
            pontos: _pontos,
            total: _perguntas.length,
          ),
        ),
      );
    }
  }

  Color? _corOpcao(int i) {
    if (_selecionada == null) return null;
    if (i == _perguntas[_indice].correta) return Colors.green.shade100;
    if (i == _selecionada) return Colors.red.shade100;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final p = _perguntas[_indice];
    final respondeu = _selecionada != null;

    return Scaffold(
      appBar: AppBar(title: Text('Quiz • ${widget.categoria.nome}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pergunta ${_indice + 1}/${_perguntas.length}'),
                Text('Pontos: $_pontos', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(value: (_indice + 1) / _perguntas.length),
            const SizedBox(height: 20),
            Text(p.enunciado, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            for (int i = 0; i < p.opcoes.length; i++)
              Card(
                color: _corOpcao(i),
                child: ListTile(
                  title: Text(p.opcoes[i]),
                  leading: CircleAvatar(child: Text(String.fromCharCode(65 + i))),
                  onTap: () => _responder(i),
                ),
              ),
            const SizedBox(height: 8),
            if (respondeu)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${_selecionada == p.correta ? "✅ Correto! " : "❌ Quase! "}${p.explicacao}',
                ),
              ),
            const Spacer(),
            ElevatedButton(
              onPressed: respondeu ? _proxima : null,
              child: Text(_indice == _perguntas.length - 1 ? 'Ver resultado' : 'Próxima'),
            ),
          ],
        ),
      ),
    );
  }
}