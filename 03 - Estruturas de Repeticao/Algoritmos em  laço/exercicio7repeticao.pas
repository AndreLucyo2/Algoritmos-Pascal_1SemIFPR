//7.
program exe7lendorepetidamente ;

Var
vlrNum , cont , aux : integer ;

Begin

		repeat
		Begin
    writeln('Entre com o numero');
		Readln(vlrNum);
		if (vlrNum <> 999) then
   		aux := aux + vlrNum ;
	 end;
	 until vlrNum = 999;
	 writeln(aux);
	 readln;
	 
end.