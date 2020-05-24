// Três amigos, Carlos, André e Felipe. decidiram rachar
// igualmente a conta de um bar. Faça um algoritmo para ler
// o valor total da conta e imprimir quanto cada um deve
// pagar, mas faça com que Carlos e André não paguem centavos.
// Ex: uma conta de R$101,53 resulta em R$33,00 para
// Carlos, R$33,00 para André e R$35,53 para Felipe.

//----------------------------------------------------------------
// Seção de cabeçalho:
ALGORITMO "Exercicio15"

// Seção de Variaveis:
var carlos : real
    andre : real
    felipe : real
    conta : real
    divisao: real
    parteInteira : real
    

INICIO

   // Seção de Entrada de dados:
   EscrevaL("Qual o valor da conta?")
   Leia (conta)

   // Seção de procssamento:
   divisao := (conta/3):3:0
   
   parteInteira := divisao

   //carlos :=   divisao -  parteInteira

   // Seção de Saída:

   EscrevaL("Parte inteira:", divisao:0:1)
    //EscrevaL("Parte Inteira:", carlos :0:2)

FIMALGORITMO




