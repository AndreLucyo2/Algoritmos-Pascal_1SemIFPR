//6. Crie um programa para que retorne o somatório de todos os números entre 1 e um
//valor fornecido pelo usuário. Por exemplo, se o usuário fornecer o número 4, o
//computador deverá calcular o somatório 1+ 2 + 3 + 4 = 10.

Program exe6calcularsomatoria ;
uses sysutils ;
Var

cont , vlrNum , aux : integer ;
dsNumero : String ;
Begin
		writeln('Entre com um numero');
		Readln(vlrNum);

cont := 1;

		while( cont <= vlrNum ) Do
	Begin
	 	dsNumero := concat (dsNumero , ' + ' ,inttostr(cont));
		aux :=aux + cont ;
		cont := cont + 1;
		end;
	writeln(dsNumero , ' = ',aux);
	readln;
end.

		
		

		