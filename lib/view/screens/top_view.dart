// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teste_escribo_2/components/card_players.dart';
import 'package:teste_escribo_2/store/snakes_leaders.dart';

// Esta é a Screen Top, que contém os Widgets dos avatares dos Jogadores...

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Observer(
          builder: (_) => AnimatedContainer(
            curve: Curves.elasticInOut,
            duration: Duration(milliseconds: 900),
            width: store.vezJogador == 1 ? 125 : 115,
            height: store.vezJogador == 1 ? 60 : 55,
            child: CardPlayers(
              player: "1",
            ),
          ),
        ),
        Observer(
          builder: (_) => AnimatedContainer(
            curve: Curves.elasticInOut,
            duration: Duration(milliseconds: 900),
            width: store.vezJogador == 2 ? 125 : 115,
            height: store.vezJogador == 2 ? 60 : 55,
            child: CardPlayers(
              player: "2",
            ),
          ),
        ),
      ],
    );
  }
}
