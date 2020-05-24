{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Crie um programa que armazene num vetor oito números inteiros, fornecidos pelo
 usuario. O programa deve exibir um menu com 5 opcoes para o usuario escolher,
 conforme abaixo:
      (1) exibir todos os números;
      (2) exibir todos os números na ordem inversa;
      (3) exibir a soma dos números;
      (4) exibir todos os valores menores que um outro número, fornecido pelo
          usuario. Informe também quantos números são menores e quantos sao
          maiores do que esse valor;
      (5) exibir todos os valores maiores que a média dos valores fornecidos.
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program armazenaSequencia;
uses sysUtils;

const
  tamVetor       = 8; // tamanho do vetor fornecido pelo usuario
  vetOpcoes      : array [1..5] of string = ('(1) Exibir os numeros',
                                             '(2) exibir todos os números na ordem inversa',
                                             '(3) exibir a soma dos números',
                                             '(4) exibir todos os valores menores que um numero fornecido por voce',
                                             '(5) exibir todos os valores maiores que a sua media');
type
  tpVetor         = array [1..tamVetor] of integer; // define "tpVetor" como um array com "tamVetor" posicoes
var
  vlOpcao         : integer; // opcao do usuario
  vetValores      : tpVetor; // vetor para armazenar os numeros fornecidos pelo usuario
  cont            : integer; // variavel contadora

{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin
  // complete o código abaixo apropriadamente para resolver o problema
  writeln('Programa de Sequencias Numericas');
  writeln('Primeiramente informe ', tamVetor,' valores');
  for cont := 1 to tamVetor do
       begin
       writeln('Informe o valor ', cont, ' de ', tamVetor, ':');
       readln;
       end;

  writeln('Essas sao as suas opcoes');
  for cont := 1 to 5 do
       writeln(#9, vetOpcoes[cont]);
  writeln('Qual a sua opcao (de 1 a 5)?');
  readln(vlOpcao);

  case vlOpcao of
    1: //Opcao (1): exibir todos os números
      begin
      writeln('Voce escolheu a opcao (1): exibir todos os números');

      end;
    2: //Opcao (2): exibir todos os números na ordem inversa
      begin
      writeln('Voce escolheu a opcao opcao (2): exibir todos os números na ordem inversa');

      end;
    3: //Opcao (3): exibir a soma dos números
      begin
      writeln('Voce escolheu a opcao (3): exibir a soma dos números');

      end;
    4: //Opcao (4): exibir todos os valores menores que um número fornecido pelo usuario
      begin
      writeln('Voce escolheu a opcao (4): exibir todos os valores menores que um número fornecido por voce');

      end;
    5: //Opcao (5) exibir todos os valores maiores que a média dos valores fornecidos.
      begin
      writeln('Voce escolheu a opcao (5) exibir todos os valores maiores que a média dos valores fornecidos');

      end;
    else
      writeln('Voce forneceu uma opcao invalida (', vlOpcao, ')!');
  end; // end do case

  //insira seu codigo aqui


  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;
end.


