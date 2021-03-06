// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


import 'package:flutter/material.dart';
import 'package:teste_escribo_2/components/button.dart';
import 'package:teste_escribo_2/components/dado1.dart';
import 'package:teste_escribo_2/components/dado2.dart';
import 'package:teste_escribo_2/components/message_box.dart';

// Esta é a Screen Bottom, onde ficam os dados, caixa de mensagens e botão Jogar...

class BottomView extends StatelessWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Dado1(),
            ),
            Container(
              child: MessageBox(),
            ),
            Container(
              child: Dado2(),
            ),
          ],
        ),
        ButtonStart(),
      ],
    );
  }
}
