import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

class Dado1 extends StatelessWidget {
  const Dado1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SnakesLeaders>(context);
    return Observer(
      builder: (_) => Container(
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
        child: Image.asset('assets/dado${store.valorDado1.toString()}.png'),
      ),
    );
  }
}