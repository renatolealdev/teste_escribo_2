// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_escribo_2/components/marcadores.dart';

class CardPlayers extends StatelessWidget {
  final String player;

  const CardPlayers({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(5, 5),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: player == "1"
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "P1",
                      style: GoogleFonts.galindo(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: MarcadorPosicaoP1(),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: MarcadorPosicaoP2(),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "P2",
                      style: GoogleFonts.galindo(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
