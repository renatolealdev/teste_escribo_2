// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

// Estes são os Widgets responsáveis por mostrar a casa correspondente ao Jogador (em tempo real)...

class MarcadorPosicaoP1 extends StatelessWidget {
  const MarcadorPosicaoP1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Observer(
      builder: (_) => Center(
        child: Text(store.positionP1.toString()),
      ),
    );
  }
}

class MarcadorPosicaoP2 extends StatelessWidget {
  const MarcadorPosicaoP2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Center(
      child: Observer(
        builder: (_) => Text(store.positionP2.toString()),
      ),
    );
  }
}
