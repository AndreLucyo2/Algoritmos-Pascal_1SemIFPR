//5. Escreva um programa que conte em ordem reversa, de 25 a zero.

program exe5calculaordemreversa ;

Var
cont  : integer ;
begin
cont := 25 ;
	while( cont >= 0 ) Do
	Begin
	 	writeln(cont);
	  cont := cont - 1 ;
	end;
	readln;
end.
