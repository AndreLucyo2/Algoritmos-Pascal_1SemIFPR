{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Escreva um programa que armazene 10 números inteiros em um vetor. Apos, imprima
 os números do primeiro ao último e do último ao primeiro.
 ===============================================================================

 NOTE: esse programa utiliza uma procedure para imprimir o vetor. Utilize-a!
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program manipulaVetor;
const
   tamVetor   = 10;
type
  tpVetor     = array [1..tamVetor] of integer; // define "tpVetor" como um array de "tamVetor" posições
var
  vetNum      : tpVetor; // vetor para ser preenchido pelo usuário
  cont        : integer; // variavel contadora

// Declaração de procedures e funcoes
procedure imprimeVetor(doPrimeiroAoUltimo: boolean);
// Se o parametro "doPrimeiroAoUltimo" for verdadeiro, imprime o vetor "vetNum"
// da primeira a ultima posicao; caso contrario, imprime da ultima a primeira
var
  contAux    : integer; // variavel contadora
  aux        : integer; // variavel auxiliar
  posicao    : integer; // Armazena o indice do vetor que sera impresso
begin
if (doPrimeiroAoUltimo) then // se "doPrimeiroAoUltimo" for verdadeiro...
   begin
   posicao := 1; // comecara a imprimir a partir da primeira posicao
   aux     := 1; // "aux" igual a +1 fara com que "posicao" AUMENTE em cada iteracao do laco abaixo
   end
else // se "doPrimeiroAoUltimo" for falso...
   begin
   posicao := tamVetor; // comecara a imprimir a partir da ultima posicao
   aux     := -1; // "aux" igual a -1 fara com que "posicao" DIMINUA em cada iteracao do laco abaixo
   end;

{O laço que segue deve imprimir o vetor "vetNum" como apropriado. Complete o
 código para fazê-lo operar conforme esperado. Note que "posicao" cresce se
 "doPrimeiroAoUltimo" for verdadeiro e descresce caso contrário}
while (posicao>=1) and (posicao<=10) do
   begin
   // insira seu código aqui, conforme apropriado
   posicao := posicao + aux; //"aux" pode ser "+1" ou "-1"; ou seja, "aux" pode aumentar ou diminuir
   end;
end;

{ ================= Programa principal ================= }
begin
for cont:= 1 to tamVetor do // preenche o vetor
   begin
   writeln('Insira o valor ', cont, ' de ', tamVetor, ' para o vetor');
   // insira seu código aqui ...
   end;

writeln('Vetor preenchido. ');

writeln('Imprimindo o vetor do primeiro ao ultimo valor...');
// insira seu código aqui ...

writeln('Imprimindo o vetor do ultimo ao primeiro valor...');
// insira seu código aqui ...


writeln('Pressione [ENTER] para encerrar o programa...');
readln;
end.


