program exemplodecaso ;

Var
valor : integer ;

Begin
		writeln('Entre com o numero entre 0 e 2');
		readln(valor);

		case valor of
								0 : Begin
								      writeln('o numero digitado = zero');
											readln;
										end;
								1 : Begin
											writeln('o numero digitado = um ');
											readln;
										end;
								2 : Begin
											writeln('o numero digitado = dois ');
											readln;
										end;
		else
			writeln('O numero digitado eh invalido');
			readln;
		end;
end.
