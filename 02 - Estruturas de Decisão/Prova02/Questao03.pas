
Program questao03;
	{$codepage utf8}
	uses crt, sysutils;

	var
		nmAluno     : string;
		n1,n2,n3,n4 : real;
		soma        : real;
		media       : real;
		notaRec     : real;
		resultadoRec: String;
		resultado   : String;

		qtdAulas    : integer;
		qtdFaltas   : integer;
		pcntFaltas  : real;

Begin

	WriteLn('-----------------  DADOS DO ALUNO -----------------------------------');
	WriteLn('Digite o Nome do Aluno: ');
	readln(nmAluno);

	writeln();
	WriteLn('-----------------  TOTAL DE AULAS -----------------------------------');
	WriteLn('Digite numero de aula: ');
	readln(qtdAulas);

	writeln();
	WriteLn('-----------------  FALTAS DO ALUNO -----------------------------------');
	WriteLn('Digite a Qtde de faltas: ');
	readln(qtdFaltas);	

	writeln();
	WriteLn('-----------------  NOTAS DO ALUNO [0 a 100]  --------------------------');
	WriteLn('Digite a primeira nota: ');
	readln(n1);
	WriteLn('Digite a segunda nota: ');
	readln(n2);
	WriteLn('Digite a terceira nota: ');
	readln(n3);
	WriteLn('Digite a quarta nota: ');
	readln(n4);
	writeln();

	//calcular % de fatas:
	pcntFaltas := (qtdFaltas*100)/qtdAulas;

	//calculo da Média:
	soma :=(n1+n2+n3+n4);
    media:=(soma/4);

	if (pcntFaltas > 25) then
		begin
			resultado:='Reprovado por frequencia.';
		end
	else if (pcntFaltas > 25) and (media < 60) then
		begin
			resultado:='Reprovado por frequencia.';
		end
	else if (pcntFaltas < 25) and (media >= 60) then
		begin
			resultado:='Aprovado';
		end
	else if (pcntFaltas < 25) and (media < 60) and (media > 40) then
		begin			
			resultado:='Em recuperação!';
			notaRec := 100 - media;
			
			resultadoRec := concat('Nota necessaria: ',FloatToStr(notaRec));
			
		end
	else if (pcntFaltas < 25) and (media <= 40) then
		begin
			resultado:='Peprovado por media!';
		end;

		writeln('Aluno     : ',nmAluno);
		writeln('Resultado : ',resultado);  		
		WriteLn('----------------------------------------------');
		writeln('Faltou = ',pcntFaltas:0:0,'%');
		writeln('Média  = ',media:0:2);
		WriteLn(resultadoRec);  //Mostra se estiver em recuperação
		writeln();

	writeln('Pressione [ENTER] para encerrar.');
	readln;
End.