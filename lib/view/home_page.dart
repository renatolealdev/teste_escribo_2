// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'top_view.dart';
import 'meddium_view.dart';
import 'bottom_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            flex: 3,
            child: TopView(),
          ),
          MeddiumView(),
          Expanded(
            flex: 6,
            child: BottomView(),
          ),
        ],
      ),
    );
  }
}
