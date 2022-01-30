// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/components/board.dart';

class MeddiumView extends StatelessWidget {
  const MeddiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/snakes_leaders.jpeg'),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      width: 340,
      height: 340,
      child: BoardGame(),
    );
  }
}
