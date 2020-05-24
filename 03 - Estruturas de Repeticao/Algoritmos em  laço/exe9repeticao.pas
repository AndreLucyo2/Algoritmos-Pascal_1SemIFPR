//9.
program exe9calcularalturasexo;

Var
vlAltura : real ;
contMacima , contFacima , contMmenor , contFmenor : integer ;
nmSexo   : Char    ;
Begin

	  Repeat
		  begin
			WriteLn('Informe a altura');
			Readln(vlAltura);
			writeln('Informa o sexo m - Masculino | f - Feminino');
			readln(nmSexo);
			if (vlAltura >0) then
		 Begin
			if (vlAltura > 1.60 ) and (nmSexo ='f') Then
				contFacima := contFacima + 1 
		  else if (vlAltura > 1.73 ) and (nmSexo ='m') Then
		 		contMacima := contMacima + 1
		  else if (vlAltura < 1.60 ) and (nmSexo ='f') Then
				contFmenor := contFmenor + 1
			else if (vlAltura < 1.73 ) and (nmSexo ='m') Then
		 		contMmenor := contMmenor + 1
      end;
		end;
		until (vlAltura < 0);
 writeln('O total de Mulheres acima eh  ' , contFacima );
 writeln('O total de Homens acima eh    ' , contMacima );
 writeln('O total de Mulheres abaixo eh ' , contFmenor );
 writeln('O total de Homens abaixo eh   ' , contMmenor );

 readln;
end.

				