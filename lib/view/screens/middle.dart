// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/widgets/board-game.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 330,
      child: BoardGame(),
      decoration: BoxDecoration(
        color: Colors.orange[200],
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.shade500,
            offset: Offset(4, 4),
            blurRadius: 7,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.orange.shade50,
            offset: Offset(-4, -4),
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
