// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dado2 extends StatelessWidget {
  const Dado2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.3),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4, 4),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Image.asset('assets/dado6.png'),
    );
  }
}
