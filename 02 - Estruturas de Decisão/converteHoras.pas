program converteData;

Var
	idHora, idMinuto, auxHora : integer;

Begin
	write('Digite a Hora: ');
	readln(idHora);
	write('Digite os Minutos: ');
	readln(idMinuto);

	if (idHora > 12) Then
		Begin
			auxHora := idHora - 12;
			if (idHora > 18) Then
			   writeln('Periodo Noturno')
			else
			   writeln('Periodo Vespertino')
		End
	else
	    begin
			auxHora := idHora;
			writeln('Periodo Matutino')
			end;
WriteLn('o horario que voce forneceu foi: ', idHora, ':', idMinuto);
WriteLn('o horario convertido eh        : ', auxHora, ':', idMinuto);

WriteLn('Pressione [ENTER] para encerrar...');
readln;
end.