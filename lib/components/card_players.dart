// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:teste_escribo_2/components/marcadores.dart';
import '../store/snakes_leaders.dart';

class CardPlayers extends StatelessWidget {
  final String player;

  const CardPlayers({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: player == "1"
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Observer(
                  builder: (_) => AnimatedContainer(
                    curve: Curves.elasticInOut,
                    duration: Duration(milliseconds: 900),
                    width: store.vezJogador == 1 ? 50 : 40,
                    height: store.vezJogador == 1 ? 50 : 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: AnimatedScale(
                        scale: store.vezJogador == 1 ? 1.0 : 0.8,
                        curve: Curves.elasticInOut,
                        duration: Duration(milliseconds: 900),
                        child: Text(
                          "P1",
                          style: GoogleFonts.galindo(
                            fontSize: 25,
                          ),
                        ),
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
                Observer(
                  builder: (_) => AnimatedContainer(
                    curve: Curves.elasticInOut,
                    duration: Duration(milliseconds: 900),
                    width: store.vezJogador == 2 ? 50 : 40,
                    height: store.vezJogador == 2 ? 50 : 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: AnimatedScale(
                        scale: store.vezJogador == 2 ? 1.0 : 0.8,
                        curve: Curves.elasticInOut,
                        duration: Duration(milliseconds: 900),
                        child: Text(
                          "P2",
                          style: GoogleFonts.galindo(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
