// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste_escribo_2/components/card_players.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CardPlayers(
          player: "1",
        ),
        CardPlayers(player: "2"),
      ],
    );
  }
}
