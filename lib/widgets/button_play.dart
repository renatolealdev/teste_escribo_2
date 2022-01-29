import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPlay extends StatelessWidget {
  const ButtonPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Icon(
                Icons.casino_rounded,
                size: 30,
                color: Colors.yellowAccent,
              ),
            ),
            Text(
              "Jogar",
              style: GoogleFonts.galindo(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Icon(
                Icons.casino_rounded,
                size: 30,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
