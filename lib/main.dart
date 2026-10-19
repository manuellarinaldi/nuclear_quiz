import 'package:flutter/material.dart';
import 'screens/cadastro_screen.dart';

void main() => runApp(const NuclearQuizApp());

class NuclearQuizApp extends StatelessWidget {
  const NuclearQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF0B6E4F);
    return MaterialApp(
      title: 'Nuclear Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: verde),
        appBarTheme: const AppBarTheme(
          backgroundColor: verde,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: verde,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(48),
          ),
        ),
      ),
      home: const CadastroScreen(),
    );
  }
}