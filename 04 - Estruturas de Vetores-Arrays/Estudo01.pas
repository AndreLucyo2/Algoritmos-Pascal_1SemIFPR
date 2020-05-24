program exercicio09;

uses crt;

Const
diasSemana = 7;

var
		indice     : Integer;
		vlTotal    : Real;
		//DECLARAÇÃO DO VETOR:
		vetorVenda : Array  [1..diasSemana] of Real;
		diaSemana  : Array  [1..diasSemana] of String;
		

Begin

	 For indice:=1 to diasSemana Do
		 Begin
			Write('Informe o valor Vendido no dia ',indice,' ?  ');
				Readln(vetorVenda[indice]);
		 		vlTotal:= vlTotal + vetorVenda[indice];
		 end;
		 
		WriteLn ('');
		WriteLn('===========  LISTA DOS VALORES VENDIDOS  =================');
		WriteLn ('');
		
		For indice :=1 to diasSemana Do
			Begin
				WriteLn ('Venda dia ',indice,' R$',(vetorVenda[indice]):0:2);
			end;
				
		Begin
				WriteLn ('');
				WriteLn ('Total Vendido R$',vlTotal:0:2);
		End; 		

		ReadKey();
End.