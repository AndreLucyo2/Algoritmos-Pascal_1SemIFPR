program historia;
Var
   vlAno        : integer;
	 idEra        : string; //AC ou DC
	 dsPeriodo    : string; //hist�rico ou pr�-hist�rico
	 dsIdade      : string; // Idade hist�rica
Begin
writeln('Entre com o ano');
readln(vlAno);
writeln('Informe a Era (AC ou DC), em maiusculas');
readln(idEra);
if (idEra = 'AC') Then
   begin
   if (vlAno >= 4000) and (vlAno <= 300000) Then
	    Begin
			dsPeriodo := 'Pre Historico';
			dsIdade   := 'Pre Historia'
			end
	else if (vlAno >=0) and (vlAno <4000) then
	    Begin
			dsPeriodo := 'Historico';
			dsIdade   := 'Idade Antiga'
			end;
	end
Else // se a era for "DC"
    if (vlAno >=0) and (vlAno <=476) then
	    Begin
			dsPeriodo := 'Historico';
			dsIdade   := 'Idade Antiga'
			end
    else if (vlAno >476) and (vlAno <=1453) then
	    Begin
			dsPeriodo := 'Historico';
			dsIdade   := 'Idade Media'
			end
    else if (vlAno >1453) and (vlAno <=1789) then
	    Begin
			dsPeriodo := 'Historico';
			dsIdade   := 'Idade Moderna'
			end
		else
	    Begin
			dsPeriodo := 'Historico';
			dsIdade   := 'Idade Contemporanea';
			end;
Writeln('Voce especificou o ano de ', vlAno, ' ', idEra);
Writeln('Essa epoca corresponde a ', dsPeriodo, ' - ', dsIdade);
readln;

end.