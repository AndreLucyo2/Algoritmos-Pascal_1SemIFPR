 {
 	Invers�o de uma s�rie de n�meros � Crie um programa que permita a um usu�rio
	informar 12 n�meros quaisquer e, em seguida, os exiba na ordem inversa.
	Ap�s isso, modifique o programa para que o usu�rio possa continuar informando
	uma quantidade qualquer de n�meros, at� que um valor de sentinela seja inserido
	 (se um valor sentinela n�o for informado, inverta a sequ�ncia se a quantidade
	 de n�meros informados pelo usu�rio chegar a 12).  
 }
program exercicio01;

uses crt;

Const
	tamanhoVetor = 4;

var
		indice      : Integer;
		sentinela   : Real;
		varTemp     : Integer;
		vetorNumero : Array  [1..tamanhoVetor] of Integer; 

Begin
	sentinela:= 5;

	repeat
		
		//Limpar vetor:
		For indice:=1 to tamanhoVetor Do
		begin
			vetorNumero[indice]:= 0;
		end;
		
		For indice:=1 to tamanhoVetor Do
		Begin
			Write(indice,' - Informe um numero: ');
			Readln(varTemp);
			vetorNumero[indice]:= varTemp;

		//	if (varTemp = sentinela) then
		//	begin		
				//Sai do laço;
		//		Break;
		//	end; 

		end;

		WriteLn ('');
		WriteLn('============  SAIDA  ==========================');
		WriteLn ('');

		while (indice >= 1) Do
			begin
				WriteLn ('Numero ',indice,' =',vetorNumero[indice]);
				indice := indice -1
			end ; 

	until (varTemp = sentinela);   

		WriteLn ('');
		WriteLn ('------------  Fim  -------------------');


	ReadKey();
End.