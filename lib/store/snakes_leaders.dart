
import 'package:mobx/mobx.dart';
import 'dart:math';
part 'snakes_leaders.g.dart';

// Este é o arquivo Store para o gerenciamento de estado do App, através do MobX + Provider...

class CobrasEscadas = _CobrasEscadas with _$CobrasEscadas;

abstract class _CobrasEscadas with Store {
  
  @observable
  int positionP1 = 0;

  @observable
  int positionP2 = 0;

  @observable
  int dado1 = 1;

  @observable
  int dado2 = 6;

  @observable
  int vezJogador = 1;

  @observable
  int somaDados = 0;

  @observable
  String alerta1 = "";

  @observable
  String alerta2 = "";

  @action
  jogar() {
    alerta1 = "";
    alerta2 = "";
    dado1 = Random().nextInt(6) + 1;
    dado2 = Random().nextInt(6) + 1;
    somaDados = dado1 + dado2;
    vezJogador == 1 ? condicoesP1() : condicoesP2();
  }

  @action
  reiniciarJogo() {
    positionP1 = 0;
    positionP2 = 0;
    dado1 = 1;
    dado2 = 6;
    vezJogador = 1;
    somaDados = 0;
    alerta1 = "";
    alerta2 = "";

    jogar;
  }

  @action
  condicoesP1() {
    if (positionP1 + somaDados == 9) {
      alerta1 = "Escada. Pulou para a casa 28!";
      positionP1 = 28;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
    } else if (positionP1 + somaDados == 23) {
      positionP1 = 43;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Escada. Pulou para a casa 43!";
    } else if (positionP1 + somaDados == 60) {
      positionP1 = 88;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Escada. Pulou para a casa 88!";
    } else if (positionP1 + somaDados == 61) {
      positionP1 = 83;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Escada. Pulou para a casa 83!";
    } else if (positionP1 + somaDados == 58) {
      positionP1 = 15;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Cobra. Retorne para a casa 15!";
    } else if (positionP1 + somaDados == 74) {
      positionP1 = 56;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Cobra. Retorne para a casa 56!";
    } else if (positionP1 + somaDados == 87) {
      positionP1 = 67;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Cobra. Retorne para a casa 67!";
    } else if (positionP1 + somaDados > 100) {
      int sobra = ((positionP1 + somaDados) - 100);
      positionP1 = 100 - sobra;
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
      alerta1 = "Bateu no final, volte $sobra casas!";
    } else if (positionP1 + somaDados == 100) {
      positionP1 = 100;
      alerta1 = "Jogador 1 Venceu!";
      vezJogador = 0;
    } else {
      positionP1 += somaDados;
      alerta1 = "Jogador 1 andou $somaDados casas";
      if (dado1 == dado2) {
        vezJogador = 1;
        alerta2 = "Dados iguais. Jogador 1 joga denovo!";
      } else {
        vezJogador = 2;
      }
    }
  }

  @action
  condicoesP2() {
    if (positionP2 + somaDados == 9) {
      alerta1 = "Escada. Pulou para a casa 28!";
      positionP2 = 28;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
    } else if (positionP2 + somaDados == 23) {
      positionP2 = 43;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Escada. Pulou para a casa 43!";
    } else if (positionP2 + somaDados == 60) {
      positionP2 = 88;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Escada. Pulou para a casa 88!";
    } else if (positionP2 + somaDados == 61) {
      positionP2 = 83;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Escada. Pulou para a casa 83!";
    } else if (positionP2 + somaDados == 58) {
      positionP2 = 15;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Cobra. Retorne para a casa 15!";
    } else if (positionP2 + somaDados == 74) {
      positionP2 = 56;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Cobra. Retorne para a casa 56!";
    } else if (positionP2 + somaDados == 87) {
      positionP2 = 67;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Cobra. Retorne para a casa 67!";
    } else if (positionP2 + somaDados > 100) {
      int sobra = ((positionP2 + somaDados) - 100);
      positionP2 = 100 - sobra;
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
      alerta1 = "Bateu no final, volte $sobra casas!";
    } else if (positionP2 + somaDados == 100) {
      positionP2 = 100;
      alerta1 = "Jogador 2 Venceu!";
      vezJogador = 0;
    } else {
      positionP2 += somaDados;
      alerta1 = "Jogador 2 andou $somaDados casas";
      if (dado1 == dado2) {
        vezJogador = 2;
        alerta2 = "Dados iguais. Jogador 2 joga denovo!";
      } else {
        vezJogador = 1;
      }
    }
  }
}
