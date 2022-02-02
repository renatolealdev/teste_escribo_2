// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/components/board.dart';

// Esta é a Screen Meddium, onde ficam o Board(tabuleiro) do App e também os marcadores de posição dos Jogadores...

class MeddiumView extends StatelessWidget {
  const MeddiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/board_image.png'),
        ),

      ),
      width: 340,
      height: 340,
      child: BoardGame(),
    );
  }
}
