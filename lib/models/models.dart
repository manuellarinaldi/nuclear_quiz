import 'package:flutter/material.dart';

class Jogador {
  final String nome;
  final String email;
  final String perfil;
  const Jogador({required this.nome, required this.email, required this.perfil});
}

class Categoria {
  final int id;
  final String nome;
  final String descricao;
  final IconData icone;
  final Color cor;
  const Categoria({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.icone,
    required this.cor,
  });
}

class Conteudo {
  final int categoriaId;
  final String titulo;
  final String resumo;
  final String texto;
  const Conteudo({
    required this.categoriaId,
    required this.titulo,
    required this.resumo,
    required this.texto,
  });
}

class Pergunta {
  final int categoriaId;
  final String enunciado;
  final List<String> opcoes;
  final int correta; // índice da opção correta
  final String explicacao;
  const Pergunta({
    required this.categoriaId,
    required this.enunciado,
    required this.opcoes,
    required this.correta,
    required this.explicacao,
  });
}
