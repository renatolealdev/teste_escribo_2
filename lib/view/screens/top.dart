// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/widgets/side_player1.dart';
import 'package:teste_escribo_2/widgets/side_player2.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.orange.shade600, Colors.orange.shade200],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SidePlayer1(),
          ),
          Expanded(
            child: SidePlayer2(),
          ),
        ],
      ),
    );
  }
}
