{
	2. Faça um algoritmo que leia 100 valores e os escreva na ordem
	contrária à que foram digitados.
}

program Exercicio02;

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
			  vetA[cont]:= random(100); //Random-Gera valores aleatórios em um faixa informada ;
		 end;
		 
		//Mostra o vetor ordem inversa:
		 For cont:=dimVetor DownTo 1 Do
		 Begin  			  
				Writeln(vetA[cont]);
		 end;
	  
		ReadKey();
End.