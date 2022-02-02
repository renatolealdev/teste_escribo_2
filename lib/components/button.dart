// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

// Este é o Widget do botão Jogar do Jogo - Onde é chamado o método jogar que está no arquivo de gerenciamento de estado (store)...

class ButtonStart extends StatelessWidget {
  ButtonStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Observer(
          builder: (_) => ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: (store.vezJogador == 1)
                    ? Colors.blue
                    : (store.vezJogador == 2)
                        ? Colors.red
                        : Colors.black),
            onPressed: (store.vezJogador == 1 || store.vezJogador == 2) 
            ? store.jogar : store.reiniciarJogo,
            icon: Icon(
              Icons.sports_esports_outlined,
              size: 30,
            ),
            label: Padding(
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
              child: Text(
                (store.vezJogador == 1 || store.vezJogador == 2) 
                ? "Jogar"
                : "Reiniciar",
                style: GoogleFonts.galindo(
                  fontSize: 23,
                ),
              ),
            ),
          ),
        ));
  }
}
