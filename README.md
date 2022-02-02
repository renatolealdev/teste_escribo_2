## Como testar esse projeto:
### 1º Baixar e instalando apk no seu Smartphone Android através desse link: https://drive.google.com/file/d/1x8xEqKaqcH4weWQfyOeD-gyO9cPxWGvb/view?usp=sharing
### 2º Através do Firebase Hosting (App Web), através desse link direto (Pode abrir em qualquer dispositivo - Obs: SE ABRIR NA WEB, REDUZIR O TAMANHO DA JANELA PARA SIMULAR ESTAR EM UM SMARTPHONE): https://teste2-escribo-jogo.web.app/#/

### Obs: 
#### - Todo o gerenciamento de estado do jogo foi feito com MobX + Provider!
#### - Desenhei todo o board(tabuleiro), pois não encontrei um compatível gratuitamente na internet!
#### - Alguns efeitos de animação e transição de cores foram feitos para dar mais dinamismo no jogo!

### Jogo completo em execução:
https://user-images.githubusercontent.com/88440878/152227259-93bedb86-d83c-488a-ad13-6f12519a3edb.mov


### Efeito dos cards ao selecionar vez do jogador:
https://user-images.githubusercontent.com/88440878/152227294-c190cdf4-6307-4926-867a-80a8fb6a6690.mov


### Efeito do botão jogar (a cor corresponde com a cor de cada jogador, indicando de quem é a vez de tocar no botão):
https://user-images.githubusercontent.com/88440878/152227311-03a4c687-5f2e-4197-ad3a-88727d9bd2b0.mov


### Efeito no gradiente do fundo da tela (A cor do jogador vencedor assume o gradiente do fundo, indicando que foi o vencedor):
![P1_vence](https://user-images.githubusercontent.com/88440878/152227759-0513a9b3-521e-4a7d-a3a5-5fbe147bc4c1.png)
![P2_vence](https://user-images.githubusercontent.com/88440878/152227768-4fb72e49-56bd-45b9-901e-ba159ea20f20.png)

### Troca dos indicadores dos dados a cada jogado e Caixa de mensagens informativas:
https://user-images.githubusercontent.com/88440878/152227839-3a0b4d15-378d-497a-9181-8c9706079d91.mov


### Posicionamento dos avatares indicativos de posição a cada avanço ou retrocesso das casas:
https://user-images.githubusercontent.com/88440878/152227864-df502ab0-ee8e-468f-8ba8-1db87aa90a85.mov



##### resumo: Este projeto é sobre um teste para o desenvolvimento de um jogo, mais especificamente, o jogo indiano: Cobras e Escadas. Nele haviam as seguintes exigências:

1. Na sua aplicação é necessário ter uma classe chamada "CobrasEscadas". 
2. Essa classe deve ter um método "jogar" que recebe as variáveis "dado1" e "dado2", e que pode ser chamado independente do estado do jogo ou qual dos jogadores está na vez. 
3. As variáveis "dado1" e "dado2" são os valores dos dados jogados pelo jogador naquele momento e ambos são inteiros entre 1 e 6. O jogador irá se mover "dado1+dado2" casas na sua vez. 
4. Retorne a frase "Jogador X Venceu!" quando um jogador for vitorioso. Onde X é um jogador vitorioso que chegou na casa 100 sem nenhum movimento sobrando. 
5. Retorne a frase "O jogo acabou!" se algum jogador já tiver vencido o jogo e o outro jogador tentar chamar o método "jogar". 
6. Em qualquer outro caso, retorne "Jogador X está na casa Y". Onde X é o jogador atual e Y é a casa em que ele estará ao finalizar sua jogada. 
7. A interface deve ser feita com um aplicativo que rode num dispositivo Android. Ela deve obrigatoriamente exibir o board do jogo e as representações dos jogadores. Os requisitos funcionais são: 
    * Exibir avatares que representam cada um dos dois jogadores 
    * Exibir corretamente de quem é a vez. 
    * Ter um botão “Jogar” que, ao ser clicado, mostra os valores dos dados sorteados na vez do jogador, bem como a soma desses valores 
    * A movimentação dos jogadores ao mudar de casa. 
    * Uma mensagem de alerta quando um jogador cair numa casa com uma cobra, ou quando cair numa casa com uma escada. 

Essa são as regras do Jogo:

1. Existem dois jogadores e ambos começam fora do tabuleiro. 
2. O jogador 1 começa e alterna sua vez com o jogador 2. 
3. Um jogador deve jogar dois dados e somar sua posição atual ao valor da soma dos dados sempre em ordem crescente, do 1 até o 100. Exemplo: Caso um jogador esteja na casa 7 e o somatório dos dados dá 6, ele deve ir até a casa 13; 
4. Caso o valor de ambos os dados seja igual, o jogador atual ganha uma nova jogada. Exemplo, se o jogador 1 tira 5 no dado 1 e 5 no dado 2 estando na casa 7, ele deve se dirigir à casa 17 e jogar novamente. 
5. Caso um jogador pare em uma casa que é a base de uma escada, ele obrigatoriamente deve subir até a casa em que está o topo da escada. 
6. Caso um jogador pare em uma casa em que está localizada a cabeça de uma cobra, ele vai obrigatoriamente deve descer até o casa onde está a ponta da cauda da cobra. 
7. Um jogador deve cair exatamente na última casa (100) para vencer o jogo. O primeiro jogador a fazer isso, vence. Mas se o somatório dos dados com a casa atual for maior que 100, o jogador deve se movimentar para trás até a contagem terminar, como se ele tivesse batido em uma parede e retornasse. Exemplo, se um jogador está na casa 98 e o somatório dos dados dá 5, o jogador deve se mover até a casa 100 (dois movimentos), e fazer o retorno, caminhando para 99, 98 e 97 (três, quatro e cinco movimentos.)
8. Se um jogador tirar dados iguais e chegar exatamente na casa 100 sem movimentos restantes, então o jogador vence o jogo e não precisa jogar novamente. Exemplo, se um jogador está na casa 98 e o somatório dos dados dá 2 (1+1), ele ganha a segunda jogada. Mas como o primeiro movimento o faz ficar na casa 100, ele vence o jogo e não precisa jogar novamente.
