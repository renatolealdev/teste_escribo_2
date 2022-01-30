// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'view/home_page.dart';

main() {
  runApp(
    MyGameSnakeAndLeaders(),
  );
}

class MyGameSnakeAndLeaders extends StatelessWidget {
  const MyGameSnakeAndLeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Game Snakes and Leaders",
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
