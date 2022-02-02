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
    final store = Provider.of<CobrasEscadas>(context);
    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(5, 3, 5, 5),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.yellow[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.somaDados == 0
                  ? "O jogador 1 começa o jogo"
                  : "A soma dos dados foi:  ${store.somaDados}",
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.black87,
              ),
            ),
            Text(
              store.alerta1 == "" ? " " : store.alerta1,
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.green[800],
              ),
            ),
            Text(
              store.alerta2 == "" ? " " : store.alerta2,
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
