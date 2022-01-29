// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_escribo_2/view/screens/bottom.dart';
import 'package:teste_escribo_2/view/screens/middle.dart';
import 'package:teste_escribo_2/view/screens/top.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: TopScreen(),
          ),
          Container(
            height: 350,
            color: Colors.orange[200],
            alignment: Alignment.center,
            child: MiddleScreen(),
          ),
          Expanded(
            flex: 1,
            child: BottomScreen(),
          ),
        ],
      ),
    );
  }
}
