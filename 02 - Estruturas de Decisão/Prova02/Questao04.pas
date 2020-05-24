
Program questao04;
	{$codepage utf8}
	uses crt, sysutils;

	var
	idAno :Integer;
	idEra :Integer;
	msg   : string;

Begin

	WriteLn('-----------------  DADOS -----------------------------------');
	writeln('Informe ano?');
	readln(idAno);
	writeln();	
	writeln('Qual ERA?');
	writeln('[0] - AC');
	writeln('[1] - DC');
	readln(idEra);
	writeln();

	if (idEra = 0) and (idAno >= 300000) and (idAno < 4000) then
		begin
			msg:='Pré Historia';
		end	
	else if  (idEra = 0) and (idAno >= 4000) and (idAno < 1) then
		begin
			msg:='Idade Antiga';
		end
	else if  (idEra = 1) and (idAno >= 1) and (idAno < 476) then
		begin
			msg:='Idade Antiga';
		end
	else if  (idEra = 1) and (idAno >= 476) and (idAno < 1453) then
		begin
			msg:='Idade Média';
		end
	else if  (idEra = 1) and (idAno >= 1453) and (idAno < 1789) then
		begin
			msg:='Idade Moderna';
		end
	else if  (idEra = 1) and (idAno >= 1789) then
		begin
			msg:='Idade Contemporanea';
		end;

	
	writeln();
	writeln('------------------------------------------------------'); 
	writeln();
	writeln(msg);
	writeln();
	writeln('------------------------------------------------------'); 
	
	writeln();	
	writeln('Pressione [ENTER] para encerrar.');
	readln;
End.