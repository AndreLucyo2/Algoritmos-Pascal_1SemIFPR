//4. Projete um algoritmo que imprima uma lista de todos os n�meros �mpares entre 0
//e 30. Cada n�mero deve ser impresso ao lado do seu dobro e do seu triplo.

program exe4calcularnumerosimpares ;

Var
cont : integer  ;

Begin
	cont := 0 ;
	while( cont < 21 ) Do
	Begin
   if (cont mod 2<>0) then
	 Begin
	 	writeln(cont);
	 end;
	 cont := cont + 1 ;
	end;
	readln;
end.