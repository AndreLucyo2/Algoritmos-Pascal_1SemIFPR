//8. Somat�rio e m�dia de uma lista de n�meros � Construa um programa que
//permita a um usu�rio informar uma s�rie de n�meros, at� que um n�mero negativo
//seja fornecido. Ao final, imprima o somat�rio desses n�meros, a m�dia, o valor
//m�ximo e o m�nimo. Desconsidere o �ltimo n�mero informado pelo usu�rio.
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
