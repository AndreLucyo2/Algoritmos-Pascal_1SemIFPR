{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Construa um programa que permita ao usuário inserir uma quantidade qualquer de
 valores reais (não mais de 15). O usuário deve informar um valor de guarda como
 99999 para encerrar a entrada de dados.
 Exiba uma mensagem de erro se o usuário sair sem inserir nenhum número; caso
 contrário, exiba cada valor e a distância dele até a média. Por exemplo, se o
 usuário fornecer os numeros 1, 2, 3 e 4 então a média será 2.5 e o computador
 terá que imprimir a seguinte saída:
 ===============================================================================
    Valores inseridos pelo usuario  :  1.0    2.0    3.0    4.0
    Media dos valor inseridos       :  2.5
    Distancia de cada valor a media : -1.5   -0.5    0.5    1.5
 ===============================================================================

 Ao final, pergunte ao usuário se ele deseja executar o programa novamente.
 NOTE: O programa vai pedindo para o usuario fornecer ATÉ 15 números. Se o
       computador ler o valor de guarda, encerra a entrada de dados!
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program desvioMedio;
uses sysUtils;
const
  tamVetor = 15; // tamanho do vetor
type
  tpVetor  = array[1..tamVetor] of real;// "tpVetor" define um vetor de 15 valores reais
var
  vlOpcao         : char;    // variavel auxiliar, utilizada para perguntar se o programa deve ser executado novamente

procedure fazCalculos;
// essa procedure executa a solucao para o probelma proposto
var
    idPare          : boolean; // variavel auxiliar
    contaPosicoes   : integer; // conta o numero de valores informado pelo usuario
    cont            : integer; // variavel contadora
    aux             : real;    // variavel auxiliar
    vetValores      : tpVetor; // vetor a ser preenchido com valores fornecidos pelo usuário
    vetDistancias   : tpVetor; // distancias dos valores de "vetValores" a media
    vlMedia         : real;    // media dos valores fornecidos pelo usuario
begin
  contaPosicoes    := 0; // inicializa a variavel contadora
  vlMedia          := 0; // inicializa a media
  repeat // laço para preencher o vetor
    writeln('Digite um numero real. 99999 encerra a entrada de dados.');
    readln(aux);
    if (aux<>99999) then
       begin
       contaPosicoes  := contaPosicoes + 1;
       // insira seu codigo aqui
       writeln('Voce informou até agora ', contaPosicoes, ' valores entre ', tamVetor, ' possiveis.')
       end;

    idPare := (contaPosicoes = 15);
  until (idPare); // repete enquanto o valor de guarda não for informado ou o numero de posicoes for 15

  for cont := 1 to contaPosicoes do // calcula a distancia dos valores forencidos a media
     vetDistancias[cont] := vetDistancias[cont];

  // Imprime os resultados (valores informados e distancias a media)
  for cont := 1 to contaPosicoes do
     begin
     write(vetValores[cont]:0:2, #9); // imprime todos os valores do vetor na mesma linha, separados por tabulacoes


     end;
  writeln;// pula uma linha

end;
{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin
repeat
  fazCalculos; // executa a procedure que resolve o problema proposto
  writeln('Deseja executar novamente ("S" para sim, qualquer outro valor para nao)?');
  readln(vlOpcao);
until (upperCase(vlOpcao)<>'S'); // Executa o programa enquanto o usuário desejar
end.


