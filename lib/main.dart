// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/view/home_page.dart';

void main() {
  runApp(SnakesAndLadders());
}

class SnakesAndLadders extends StatelessWidget {
  const SnakesAndLadders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jogo Cobras e Escadas",
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
