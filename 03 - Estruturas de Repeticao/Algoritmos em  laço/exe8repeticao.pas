//8. Somatório e média de uma lista de números – Construa um programa que
//permita a um usuário informar uma série de números, até que um número negativo
//seja fornecido. Ao final, imprima o somatório desses números, a média, o valor
//máximo e o mínimo. Desconsidere o último número informado pelo usuário.
Program exe8somatoriadenumeros ;
var
cont , vlrNum , vlMax , vlMin , vlSoma : integer ;
vlMedia                                : real    ;
Begin

	  repeat
		Begin
   	 writeln('Entre com o numero');
			Readln(vlrNum);

			if (vlrNum >=0) then
		 begin
			vlSoma := vlSoma + vlrNum ;
			cont := cont + 1;
			if (vlrNum > vlMax) or (cont = 1) then
			  vlMax := vlrNum;
			if (vlrNum < vlMin) or (cont =1) Then
				vlMin := vlrNum; 
		 end;
	 end;
	 until vlrNum = 0;

	 vlMedia := vlSoma / cont ;

	 writeln('A soma de todos os numeros ' , vlSoma);
	 WriteLn('O numero maximo informado ' ,vlMax);
	 writeln('O numero minimo informado ' ,vlMin);
	 writeln('A media dos numeros ' ,vlMedia :2:2);
	 readln;

end.
