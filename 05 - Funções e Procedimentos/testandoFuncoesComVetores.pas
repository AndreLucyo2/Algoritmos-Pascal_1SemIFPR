program testandoFuncoesComVetores;
const
   tamVetor   = 5; // Tamanho do vetor
   numLinhas  = 5; // Numero de linhas da matriz
   numColunas = 5; // Numero de colunas da matriz
	 
type //Definicao de tipos
   tpVetor  = array [1..tamVetor] of integer;   //Define um tipo de vetor
   tpMatriz = array [1..numLinhas, 1..numColunas] of integer; // Define um tipo de matriz
	 
var //declara��o de Vari�veis globais
   vetValores : tpVetor = (1000, 2, 3, 17, 50); //Declara um vetor e o inicializa
	 matValores : tpMatriz;
   vlMedia    : real;

// ================================================================================
// ===                  Declara��o de procedures e functions                    ===
// ================================================================================
function calcMedia(umVetor: tpVetor) : real;
//Essa funcao calcula a media do vetor "umVetor", passado por valor
var
   cont    : integer; // vari�vel contadora
   vlSoma  : integer; // soma
begin
vlSoma := 0;
for cont := 1 to tamVetor do
   vlSoma := vlSoma + umVetor[cont];
calcMedia := vlSoma / tamVetor;
end;

Procedure preencheMatriz(var umaMatriz: tpMatriz; vlLimite: integer);
//Essa procedure preenche a matriz "umaMatriz", passada por refer�ncia
// Cada posi��o da matriz ir� armazenar um n�emro aleat�rio entre 0 e "vlLimite"
var
   contL, contC    : integer; // vari�veis contadoras
begin
for contL := 1 to numLinhas do
   for contC := 1 to numColunas do
      umaMatriz[contL, contC] := random(vlLimite);
end;

Procedure imprimeMatriz(umaMatriz: tpMatriz);
//Essa procedure imprime a matriz "umaMatriz" na tela
var
   contL, contC    : integer; // vari�veis contadoras
begin
for contL := 1 to numLinhas do
   begin
   for contC := 1 to numColunas do
      write(umaMatriz[contL, contC], ^I);//imprime cada numero da linha "contL" na tela
	 writeln;
	 end;
end;

// ================================================================================
// ===                           Programa Principal                             ===
// ================================================================================
begin
vlMedia := calcMedia(vetValores) ; // Calcula a media de um vetor passado como parametro
writeln('A m�dia do vetor �: ', vlMedia:7:2);
writeln('Criando uma matriz aleat�ria...');
preencheMatriz(matValores, 100);
writeln('Imprimindo a matriz:');
imprimeMatriz(matValores);
readln;
end.