# ⚛️ Nuclear Quiz

Aplicativo mobile educativo desenvolvido em **Flutter** e **Dart** que apresenta, de forma simples e interativa, as aplicações e os benefícios da tecnologia nuclear por meio de conteúdos curtos e quizzes.

> Projeto da **Challenge 2026 – FIAP** | 2º ano de Análise e Desenvolvimento de Sistemas | Sprint 1 – Mobile Application Development

## 👥 Integrantes

| Nome | RM |
|------|----|
| [Manuella Rinaldi] | [RM567915] |
| [Mariana de Paula Aguiar] | [RM] |
| [Gustavo Miguel de Oliveira] | [RM] |

**Turma:** [2TDSPS/2TDSPB]

## 🤝 Empresa parceira

**CTMSP – Centro Tecnológico da Marinha em São Paulo**, responsável pelo Programa Nuclear da Marinha (PNM), desenvolvido desde 1979. O desafio proposto foi aproximar a sociedade da tecnologia nuclear, mostrando suas aplicações e benefícios de maneira acessível, educativa e envolvente.

## 💡 Descrição da solução

A tecnologia nuclear ainda é pouco compreendida e costuma ser associada apenas a usinas, radiação ou uso militar. O **Nuclear Quiz** mostra que seus benefícios estão presentes em várias áreas do dia a dia, usando **gamificação**.

O jogador se cadastra, escolhe uma categoria, lê conteúdos curtos e testa o que aprendeu em um quiz com pontuação.

**Categorias:** Saúde • Agricultura • Indústria • Energia • Pesquisa e PNM

## 📱 Telas

| # | Tela | Função |
|---|------|--------|
| 1 | Cadastro | Formulário do jogador, com validação |
| 2 | Home | Grade de categorias |
| 3 | Lista de conteúdos | Conteúdos da categoria escolhida |
| 4 | Detalhe | Texto do conteúdo e botão de favoritar |
| 5 | Quiz | Perguntas de múltipla escolha com pontuação |
| 6 | Resultado | Pontuação final e opções de jogar de novo |

**Fluxo:** Cadastro → Home → Lista → Detalhe → Quiz → Resultado


## 🗂️ Estrutura do projeto

```
lib/
├── main.dart                        # MaterialApp e tema
├── models/
│   └── models.dart                  # Jogador, Categoria, Conteudo, Pergunta
├── data/
│   └── mock_data.dart               # Dados mockados
└── screens/
    ├── cadastro_screen.dart
    ├── home_screen.dart
    ├── lista_conteudos_screen.dart
    ├── detalhe_screen.dart
    ├── quiz_screen.dart
    └── resultado_screen.dart
```

## ▶️ Como executar

**Pré-requisitos:** Flutter SDK instalado, Android Studio com um emulador Android (ou um celular com depuração USB) e `flutter doctor` sem erros.

```bash
git clone [link-do-repositorio]
cd nuclear_quiz
flutter pub get
flutter run
```

Se houver mais de um dispositivo, escolha o emulador Android.

## 🛠️ Tecnologias

- Flutter
- Dart
- Material Design 3
- Git e GitHub (GitHub Classroom)

## 🎥 Vídeo de demonstração

[Link do vídeo no YouTube (não listado)]

## 🔮 Próximos passos

- Integração com API (Java/.NET) e banco de dados Oracle
- Ranking de jogadores
- Mapa de aplicações da tecnologia nuclear
- Persistência da pontuação e dos favoritos