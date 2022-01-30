// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonStart extends StatelessWidget {
  int currentPlayer;
  ButtonStart({
    Key? key,
    this.currentPlayer = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: currentPlayer == 1
              ? Colors.blue
              : currentPlayer == 2
                  ? Colors.red
                  : Colors.black,
        ),
        onPressed: () {},
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
    );
  }
}
