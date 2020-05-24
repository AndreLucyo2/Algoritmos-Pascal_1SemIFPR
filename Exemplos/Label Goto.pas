Program Exemplo_1;
Uses CRT;
Label Inicio;
Var x,y,z : Integer;
tecla : Char;
Begin
  Inicio:
	  ClrScr;
	  Write('Primeiro numero --> ');
	  Readln(x);
	  
	  Write('Segundo numero ---> ');
	  Readln(y);
	  
	  Write('Terceiro numero --> ');
	  Readln(z);
	  
	  Writeln;
	  Writeln;
	  If (x>=y) Then
	  	If (x>=z) Then
	  		If (y>=z) Then
	  			Writeln(x,' ',y,' ',z)
	  		Else
	  			Writeln(x,' ',z,' ',y)
	  	Else
	  		Writeln(z,' ',x,' ',y)
	  Else
	  	If (y>=z) Then
	  		If (x>=z) Then
	  			Writeln(y,' ',x,' ',z)
	  		Else
	  			Writeln(y,' ',z,' ',x)
	  	Else
	  			Writeln(z,' ',y,' ',x);
	  			
	  Writeln;
	  Write('Deseja Continuar (S/N)--> ');
	  
	Tecla:=Readkey;
  If ((Tecla = 'S') OR (Tecla = 's')) Then
  	Goto Inicio;
End.