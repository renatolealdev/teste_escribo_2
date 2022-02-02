// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/snakes_leaders.dart';

// Este é o Widget referente ao dado2. * O valor que for sorteado na Store (através de númeração ramdômica) 
// será utilizado para referenciar qual png deve aparecer dentro do Container que representa o dado...

class Dado2 extends StatelessWidget {
  const Dado2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CobrasEscadas>(context);
    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(8),

        ),
        child: Image.asset('assets/dado${store.dado2.toString()}.png'),
      ),
    );
  }
}
