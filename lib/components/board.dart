// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

class BoardGame extends StatelessWidget {
  const BoardGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return GridView.builder(
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Observer(
          builder: (_) => Center(
            child: Stack(
              children: [
                if (store.positionP1 == (index + 1))
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 0, 3, 6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "P1",
                        style: GoogleFonts.galindo(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                if (store.positionP2 == (index + 1))
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 0, 3, 6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "P2",
                        style: GoogleFonts.galindo(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                if ((store.positionP2 == (index + 1)) &&
                    (store.positionP1 == (index + 1)))
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 0, 3, 6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "P1/2",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.galindo(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
