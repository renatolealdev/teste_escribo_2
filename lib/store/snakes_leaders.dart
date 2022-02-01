import 'package:mobx/mobx.dart';
import 'dart:math';
import 'package:teste_escribo_2/view/home_page.dart';
part 'snakes_leaders.g.dart';

class SnakesLeaders = _SnakesLeaders with _$SnakesLeaders;

abstract class _SnakesLeaders with Store {
  @observable
  int positionP1 = 0;

  @observable
  int positionP2 = 0;

  @observable
  int valorDado1 = 1;

  @observable
  int valorDado2 = 6;

  @observable
  int vezJogador = 1;

  @observable
  int somaDados = 0;

  @observable
  String alertas = "";

  @action
  jogarDados() {
    alertas = "";
    valorDado1 = Random().nextInt(6) + 1;
    valorDado2 = Random().nextInt(6) + 1;
    somaDados = valorDado1 + valorDado2;
    vezJogador == 1 ? condicoesP1() : condicoesP2();
  }

  condicoesP1() {
    if (positionP1 + somaDados == 9) {
      alertas = "Escada. Pulou para a casa 28!";
      positionP1 = 28;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
    } else if (positionP1 + somaDados == 23) {
      positionP1 = 43;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Escada. Pulou para a casa 43!";
    } else if (positionP1 + somaDados == 60) {
      positionP1 = 88;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Escada. Pulou para a casa 88!";
    } else if (positionP1 + somaDados == 61) {
      positionP1 = 83;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Escada. Pulou para a casa 83!";
    } else if (positionP1 + somaDados == 58) {
      positionP1 = 15;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Cobra. Retorne para a casa 15!";
    } else if (positionP1 + somaDados == 74) {
      positionP1 = 56;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Cobra. Retorne para a casa 56!";
    } else if (positionP1 + somaDados == 87) {
      positionP1 = 67;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Cobra. Retorne para a casa 67!";
    } else if (positionP1 + somaDados > 100) {
      int sobra = ((positionP1 + somaDados) - 100);
      positionP1 = 100 - sobra;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
      alertas = "Bateu no final, volte $sobra casas!";
    } else if (positionP1 + somaDados == 100) {
      positionP1 = 100;
      alertas = "PARABÉNS! O Player-1 venceu!";
    } else {
      positionP1 += somaDados;
      valorDado1 == valorDado2 ? vezJogador = 1 : vezJogador = 2;
    }
  }

  condicoesP2() {
    if (positionP2 + somaDados == 9) {
      alertas = "Escada. Pulou para a casa 28!";
      positionP2 = 28;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
    } else if (positionP2 + somaDados == 23) {
      positionP2 = 43;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Escada. Pulou para a casa 43!";
    } else if (positionP2 + somaDados == 60) {
      positionP2 = 88;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Escada. Pulou para a casa 88!";
    } else if (positionP2 + somaDados == 61) {
      positionP2 = 83;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Escada. Pulou para a casa 83!";
    } else if (positionP2 + somaDados == 58) {
      positionP2 = 15;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Cobra. Retorne para a casa 15!";
    } else if (positionP2 + somaDados == 74) {
      positionP2 = 56;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Cobra. Retorne para a casa 56!";
    } else if (positionP2 + somaDados == 87) {
      positionP2 = 67;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Cobra. Retorne para a casa 67!";
    } else if (positionP2 + somaDados > 100) {
      int sobra = ((positionP2 + somaDados) - 100);
      positionP2 = 100 - sobra;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
      alertas = "Bateu no final, volte $sobra casas!";
    } else if (positionP2 + somaDados == 100) {
      positionP2 = 100;
      alertas = "PARABÉNS! O Player-2 venceu!";
    } else {
      positionP2 += somaDados;
      valorDado1 == valorDado2 ? vezJogador = 2 : vezJogador = 1;
    }
  }
}
