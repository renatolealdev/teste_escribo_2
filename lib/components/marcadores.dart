import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

class MarcadorPosicaoP1 extends StatelessWidget {
  const MarcadorPosicaoP1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SnakesLeaders>(context);
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
    final store = Provider.of<SnakesLeaders>(context);
    return Center(
      child: Observer(
        builder: (_) => Text(store.positionP2.toString()),
      ),
    );
  }
}
