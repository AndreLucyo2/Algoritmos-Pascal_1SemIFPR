program academico;
Var
   vlNota01, vlNota02, vlNota03, vlNota04 : real;
	 vlMedia, vlNotaREC                     : real;
	 qtAulas, qtFaltas                      : real;
	 nmAluno                                : string;
	 dsSituacaoAluno                        : string;
Begin
writeln('Entre com o nome do aluno');
readln(nmAluno);

writeln('Entre com a nota 1');
readln(vlNota01);
writeln('Entre com a nota 2');
readln(vlNota02);
writeln('Entre com a nota 3');
readln(vlNota03);
writeln('Entre com a nota 4');
readln(vlNota04);

writeln('Entre com a quantidade de aulas ministradas');
readln(qtAulas);
writeln('Entre com a quantidade de faltas');
readln(qtFaltas);

vlMedia := (vlNota01+ vlNota02+ vlNota03+ vlNota04)/4;

if (qtFaltas > 0.25*qtAulas) then // reprovado por falta
		dsSituacaoAluno := 'REPROVADO POR FALTAS'
Else if (vlMedia > 6) then
		dsSituacaoAluno := 'APROVADO'
Else if (vlMedia > 4)  then
    begin
		vlNotaREC       := 10 - vlMedia;
		dsSituacaoAluno := 'EM RECUPERACAO';
		end
Else
		dsSituacaoAluno := 'REPROVADO POR MEDIA';

writeln('Situacao do aluno ', nmAluno);
writeln('Media final: ', vlMedia:0:2);
writeln(dsSituacaoAluno);
if (dsSituacaoAluno = 'EM RECUPERACAO') then
	writeln('Nota minima para aprovacao na REC: ', vlNotaREC:0:2);

readln;	
end.
