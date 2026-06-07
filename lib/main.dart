import 'package:flutter/material.dart';
import 'package:gym_app/telas/Exercicio01.dart';
import 'package:gym_app/telas/autenticacao_tela.dart';


void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AutenticacaoTela(),
    );
  }
}