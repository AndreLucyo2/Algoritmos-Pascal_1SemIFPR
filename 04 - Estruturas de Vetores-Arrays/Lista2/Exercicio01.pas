{
	1. Escreva um algoritmo que lê um vetor A(10) e os escreva,
	imprima a posição e o elemento do vetor.
}

program Exercicio01;

uses crt;

Const
dimVetor = 10;//Dimensao do vetor

var
		cont : Integer;
		vetA : Array  [1..dimVetor] of Integer;

Begin

		//Preenche o vetor:
	 For cont:=1 to dimVetor Do
		 Begin
			  vetA[cont]:= random(100); // random informa automaticamente os valores em um faixa informada ;
		 end;
		 
		//Mostra o vetor:
		 For cont:=1 to dimVetor Do
		 Begin  			  
				Writeln(vetA[cont]);
		 end;
	  
		ReadKey();
End.