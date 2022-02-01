// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

class ButtonStart extends StatelessWidget {
  ButtonStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SnakesLeaders>(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Observer(
          builder: (_) => ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: store.vezJogador == 1 ? Colors.blue : Colors.red),
            onPressed: store.jogarDados,
            icon: Icon(
              Icons.sports_esports_outlined,
              size: 30,
            ),
            label: Padding(
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
              child: Text(
                "Jogar",
                style: GoogleFonts.galindo(
                  fontSize: 23,
                ),
              ),
            ),
          ),
        ));
  }
}
