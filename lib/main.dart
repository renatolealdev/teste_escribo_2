// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'view/home_page.dart';
import 'package:provider/provider.dart';
import './store/snakes_leaders.dart';

main() {
  runApp(
    MyGameSnakeAndLeaders(),
  );
}

class MyGameSnakeAndLeaders extends StatelessWidget {
  const MyGameSnakeAndLeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CobrasEscadas>(create: (_) => CobrasEscadas(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Game Snakes and Leaders",
        home: SafeArea( // Reduz a área do App para área útil somente...
          child: HomePage(), // Chama a Home Page do App...
        ),
      ),
    );
  }
}
