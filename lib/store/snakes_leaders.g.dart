// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snakes_leaders.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SnakesLeaders on _SnakesLeaders, Store {
  final _$positionP1Atom = Atom(name: '_SnakesLeaders.positionP1');

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

  final _$positionP2Atom = Atom(name: '_SnakesLeaders.positionP2');

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

  final _$valorDado1Atom = Atom(name: '_SnakesLeaders.valorDado1');

  @override
  int get valorDado1 {
    _$valorDado1Atom.reportRead();
    return super.valorDado1;
  }

  @override
  set valorDado1(int value) {
    _$valorDado1Atom.reportWrite(value, super.valorDado1, () {
      super.valorDado1 = value;
    });
  }

  final _$valorDado2Atom = Atom(name: '_SnakesLeaders.valorDado2');

  @override
  int get valorDado2 {
    _$valorDado2Atom.reportRead();
    return super.valorDado2;
  }

  @override
  set valorDado2(int value) {
    _$valorDado2Atom.reportWrite(value, super.valorDado2, () {
      super.valorDado2 = value;
    });
  }

  final _$vezJogadorAtom = Atom(name: '_SnakesLeaders.vezJogador');

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

  final _$somaDadosAtom = Atom(name: '_SnakesLeaders.somaDados');

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

  final _$alertasAtom = Atom(name: '_SnakesLeaders.alertas');

  @override
  String get alertas {
    _$alertasAtom.reportRead();
    return super.alertas;
  }

  @override
  set alertas(String value) {
    _$alertasAtom.reportWrite(value, super.alertas, () {
      super.alertas = value;
    });
  }

  final _$_SnakesLeadersActionController =
      ActionController(name: '_SnakesLeaders');

  @override
  dynamic jogarDados() {
    final _$actionInfo = _$_SnakesLeadersActionController.startAction(
        name: '_SnakesLeaders.jogarDados');
    try {
      return super.jogarDados();
    } finally {
      _$_SnakesLeadersActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
positionP1: ${positionP1},
positionP2: ${positionP2},
valorDado1: ${valorDado1},
valorDado2: ${valorDado2},
vezJogador: ${vezJogador},
somaDados: ${somaDados},
alertas: ${alertas}
    ''';
  }
}
