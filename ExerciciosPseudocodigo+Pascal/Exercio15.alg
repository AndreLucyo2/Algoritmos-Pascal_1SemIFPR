// Tr�s amigos, Carlos, Andr� e Felipe. decidiram rachar
// igualmente a conta de um bar. Fa�a um algoritmo para ler
// o valor total da conta e imprimir quanto cada um deve
// pagar, mas fa�a com que Carlos e Andr� n�o paguem centavos.
// Ex: uma conta de R$101,53 resulta em R$33,00 para
// Carlos, R$33,00 para Andr� e R$35,53 para Felipe.

//----------------------------------------------------------------
// Se��o de cabe�alho:
ALGORITMO "Exercicio15"

// Se��o de Variaveis:
var carlos : real
    andre : real
    felipe : real
    conta : real
    divisao: real
    parteInteira : real
    

INICIO

   // Se��o de Entrada de dados:
   EscrevaL("Qual o valor da conta?")
   Leia (conta)

   // Se��o de procssamento:
   divisao := (conta/3):3:0
   
   parteInteira := divisao

   //carlos :=   divisao -  parteInteira

   // Se��o de Sa�da:

   EscrevaL("Parte inteira:", divisao:0:1)
    //EscrevaL("Parte Inteira:", carlos :0:2)

FIMALGORITMO




