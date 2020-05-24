program algoritmorepeticao;
//ENQUANTO...
Var
cont , vlNumero , aux : integer ;
begin
     writeln('Entre com o numero para calular a tabuada');
     readln(vlNumero);
 cont := 1 ;
 repeat
 
   aux := vlNumero * cont ;
   writeln(vlNUmero , 'X' , cont , '=' , aux );
	 cont := cont + 1 ;
 until (cont >= 10);
	
	 readln;

end.