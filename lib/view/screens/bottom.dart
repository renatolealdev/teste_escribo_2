// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/widgets/button_play.dart';
import 'package:teste_escribo_2/widgets/dado1.dart';
import 'package:teste_escribo_2/widgets/dado2.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.orange.shade200,
            Colors.orange.shade900,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Dado1(),
                Dado2(),
              ],
            ),
          ),
          ButtonPlay(),
        ],
      ),
    );
  }
}
