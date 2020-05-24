{Escrever um algoritmo que lê um vetor N(20) e o escreve. Troque, a seguir, o 1* elemento com o último,
o 2* com o penúltimo, etc até o 10* com o 11* e escreva o vetor N assim modificado.}
program Ex06;
uses crt;
							var N : array [1..10] of integer;
									c,c1,aux : integer;
Begin
		 writeln('Ordem Normal ');
		 writeln();
		 for c := 1 to 10 do
				 begin
					N[c] := random(49);
					writeln(N[c]);
				 end;
		 c1 := 10;
		 writeln();
		 writeln();
		 for c := 1 to 5 do
				begin
					aux := N[c];
					N[c] := N[c1];
					N[c1] := aux;
					c1 := c1 - 1;
						if (c = c1) then
							break;
				end;
		 writeln('Ordem Reversa ');
		 writeln();
		 for c := 1 to 10 do

				writeln(N[c]);
		readkey;
END.