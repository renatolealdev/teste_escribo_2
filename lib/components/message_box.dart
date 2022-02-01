// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SnakesLeaders>(context);
    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(5, 3, 5, 10),
        width: 200,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(3, 3),
              blurRadius: 7,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   store.vezJogador == 1
            //       ? "Player-1 vai jogar..."
            //       : "Player-2 vai jogar...",
            //   textAlign: TextAlign.center,
            //   style: GoogleFonts.oxygen(
            //     fontSize: 13,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            Text(
              store.alertas == "" ? "- - -" : store.alertas,
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.red[800],
              ),
            ),
            Text(
              store.somaDados == 0
                  ? "O jogador 1 começa"
                  : "A soma dos dados é: ${store.somaDados}",
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.deepPurple[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
