program estacoesCase;

{codepage='UTF8'}
uses
  crt;

var
  idMEs, nrDia: integer;
  dsEstacao: string;
begin
  writeln('informe o mes');
  readln(idMEs);

  //se for um mes onde ha troca de estacao, solicita o dia
  if (idMEs = 3) or (idMes = 6) or (idMes = 9) or (idMes = 12) then
  begin
    writeln('Informe  o dia');
    readln(nrDia);
  end;

  case idMes of
    1, 2: dsEstacao := 'Verao';  //Meses 1 e 2 é verão
    4, 5: dsEstacao := 'Outono';  //Meses 4 e 5, Outono
    7, 8: dsEstacao := 'Inverno'; //Meses 7 e 8, Inverno
    10, 11: dsEstacao := 'Primavera';   //Meses 10 e 11 , primavera
    3,6,9,12:
    begin
      if ((idMes=12) and (nrDia > 20)) or ((idMes=3) and (nrDia <= 19)) then //Valida se é verao
        dsEstacao := 'Verao'
      else if ((idMes=3) and (nrDia > 19)) or ((idMes=6) and (nrDia <= 20))  then //Valida se é outono
        dsEstacao := 'Outono'
      else if ((idMes=6) and (nrDia > 20)) or ((idMes=9) and (nrDia <= 21)) then //Valida se é inverno
        dsEstacao := 'Inverno'
      else if ((idMes=9) and (nrDia > 21)) or ((idMes=12) and (nrDia <= 20)) then //Valida se é primavera
        dsEstacao := 'Primavera'
    end;
    else
      writeln('Mes Invalido');
  end;

	writeln('A estacao para a data informada eh ', dsEstacao);
  readln;
end.