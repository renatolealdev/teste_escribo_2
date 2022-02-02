// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snakes_leaders.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CobrasEscadas on _CobrasEscadas, Store {
  final _$positionP1Atom = Atom(name: '_CobrasEscadas.positionP1');

  @override
  int get positionP1 {
    _$positionP1Atom.reportRead();
    return super.positionP1;
  }

  @override
  set positionP1(int value) {
    _$positionP1Atom.reportWrite(value, super.positionP1, () {
      super.positionP1 = value;
    });
  }

  final _$positionP2Atom = Atom(name: '_CobrasEscadas.positionP2');

  @override
  int get positionP2 {
    _$positionP2Atom.reportRead();
    return super.positionP2;
  }

  @override
  set positionP2(int value) {
    _$positionP2Atom.reportWrite(value, super.positionP2, () {
      super.positionP2 = value;
    });
  }

  final _$dado1Atom = Atom(name: '_CobrasEscadas.dado1');

  @override
  int get dado1 {
    _$dado1Atom.reportRead();
    return super.dado1;
  }

  @override
  set dado1(int value) {
    _$dado1Atom.reportWrite(value, super.dado1, () {
      super.dado1 = value;
    });
  }

  final _$dado2Atom = Atom(name: '_CobrasEscadas.dado2');

  @override
  int get dado2 {
    _$dado2Atom.reportRead();
    return super.dado2;
  }

  @override
  set dado2(int value) {
    _$dado2Atom.reportWrite(value, super.dado2, () {
      super.dado2 = value;
    });
  }

  final _$vezJogadorAtom = Atom(name: '_CobrasEscadas.vezJogador');

  @override
  int get vezJogador {
    _$vezJogadorAtom.reportRead();
    return super.vezJogador;
  }

  @override
  set vezJogador(int value) {
    _$vezJogadorAtom.reportWrite(value, super.vezJogador, () {
      super.vezJogador = value;
    });
  }

  final _$somaDadosAtom = Atom(name: '_CobrasEscadas.somaDados');

  @override
  int get somaDados {
    _$somaDadosAtom.reportRead();
    return super.somaDados;
  }

  @override
  set somaDados(int value) {
    _$somaDadosAtom.reportWrite(value, super.somaDados, () {
      super.somaDados = value;
    });
  }

  final _$alerta1Atom = Atom(name: '_CobrasEscadas.alerta1');

  @override
  String get alerta1 {
    _$alerta1Atom.reportRead();
    return super.alerta1;
  }

  @override
  set alerta1(String value) {
    _$alerta1Atom.reportWrite(value, super.alerta1, () {
      super.alerta1 = value;
    });
  }

  final _$alerta2Atom = Atom(name: '_CobrasEscadas.alerta2');

  @override
  String get alerta2 {
    _$alerta2Atom.reportRead();
    return super.alerta2;
  }

  @override
  set alerta2(String value) {
    _$alerta2Atom.reportWrite(value, super.alerta2, () {
      super.alerta2 = value;
    });
  }

  final _$_CobrasEscadasActionController =
      ActionController(name: '_CobrasEscadas');

  @override
  dynamic jogar() {
    final _$actionInfo = _$_CobrasEscadasActionController.startAction(
        name: '_CobrasEscadas.jogar');
    try {
      return super.jogar();
    } finally {
      _$_CobrasEscadasActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reiniciarJogo() {
    final _$actionInfo = _$_CobrasEscadasActionController.startAction(
        name: '_CobrasEscadas.reiniciarJogo');
    try {
      return super.reiniciarJogo();
    } finally {
      _$_CobrasEscadasActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic condicoesP1() {
    final _$actionInfo = _$_CobrasEscadasActionController.startAction(
        name: '_CobrasEscadas.condicoesP1');
    try {
      return super.condicoesP1();
    } finally {
      _$_CobrasEscadasActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic condicoesP2() {
    final _$actionInfo = _$_CobrasEscadasActionController.startAction(
        name: '_CobrasEscadas.condicoesP2');
    try {
      return super.condicoesP2();
    } finally {
      _$_CobrasEscadasActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
positionP1: ${positionP1},
positionP2: ${positionP2},
dado1: ${dado1},
dado2: ${dado2},
vezJogador: ${vezJogador},
somaDados: ${somaDados},
alerta1: ${alerta1},
alerta2: ${alerta2}
    ''';
  }
}
