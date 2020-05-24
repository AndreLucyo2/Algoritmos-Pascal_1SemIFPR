program algoritmorepeticao;
//REPITA...
Var
cont , vlNumero , aux : integer ;
begin
     writeln('Entre com o numero para calular a tabuada');
     readln(vlNumero);
 cont := 1 ;
 while(cont < 11 ) do  
 Begin
   aux := vlNumero * cont ;
   writeln(vlNUmero , 'X' , cont , '=' , aux );
	 cont := cont + 1 ;
	 end;
	 readln;

end.