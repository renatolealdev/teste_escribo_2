// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'screens/top_view.dart';
import 'screens/meddium_view.dart';
import 'screens/bottom_view.dart';
import 'package:teste_escribo_2/store/snakes_leaders.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);

    dynamic changeColorBegin() {
      dynamic corBegin = store.positionP1 == 100
          ? Colors.blue[200]
          : store.positionP2 == 100
              ? Colors.red[200]
              : Colors.yellow[400];
      return corBegin;
    }

    dynamic changeColorEnd() {
      dynamic corEnd = store.positionP1 == 100
          ? Colors.blue[600]
          : store.positionP2 == 100
              ? Colors.red[600]
              : Colors.orange[600];
      return corEnd;
    }

    return Scaffold(
      body: Observer(
        builder: (_) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                changeColorBegin(),
                changeColorEnd(),
              ],
            ),
          ),
          child: Column(
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
        ),
      ),
    );
  }
}
