// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BoardGame extends StatelessWidget {
  const BoardGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(25),
          ),
        );
      },
    );
  }
}
