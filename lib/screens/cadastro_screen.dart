import 'package:flutter/material.dart';
import '../models/models.dart';
import 'home_screen.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  String _perfil = 'Estudante';
  bool _aceitou = false;

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _enviar() {
    if (!_formKey.currentState!.validate()) return;

    if (!_aceitou) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aceite os termos para continuar.')),
      );
      return;
    }

    final jogador = Jogador(
      nome: _nomeController.text.trim(),
      email: _emailController.text.trim(),
      perfil: _perfil,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Bem-vindo(a), ${jogador.nome}!')),
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen(jogador: jogador)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuclear Quiz')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.bubble_chart, size: 72, color: Color(0xFF0B6E4F)),
              const SizedBox(height: 8),
              const Text(
                'Descubra a tecnologia nuclear jogando!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Informe seu nome';
                  if (v.trim().length < 3) return 'Mínimo de 3 caracteres';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Informe seu e-mail';
                  if (!v.contains('@') || !v.contains('.')) return 'E-mail inválido';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _perfil,
                decoration: const InputDecoration(
                  labelText: 'Perfil',
                  prefixIcon: Icon(Icons.badge),
                  border: OutlineInputBorder(),
                ),
                items: const ['Estudante', 'Professor', 'Visitante']
                    .map((p) => DropdownMenuItem(value: p, child: Text(p)))
                    .toList(),
                onChanged: (v) => setState(() => _perfil = v!),
              ),
              const SizedBox(height: 8),
              CheckboxListTile(
                value: _aceitou,
                onChanged: (v) => setState(() => _aceitou = v ?? false),
                title: const Text('Aceito os termos de uso'),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: _enviar, child: const Text('Começar')),
            ],
          ),
        ),
      ),
    );
  }
}
