// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
        child: Text(
          "Aqui aparecerá as mensagens informativas...",
          textAlign: TextAlign.center,
          style: GoogleFonts.oxygen(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
