{Construa um programa que leia uma data qualquer (dia, mês e ano) e calcule a
 data do próximo dia. Lembre-se que em anos bissextos o mês de fevereiro tem 29
 dias. Lembre-se que um ano é bissexto quando for divisível por 4, com exceção
 dos anos centenários, que são divisíveis por 100, como  1700, 1800, etc.

 MODIFICAÇÃO: após finalizar esse programa, modifique-o para validar a data
              fornecida pelo usuário. Caso a data não seja válida, emita uma
              mensagem de erro e encerre o programa.
 }

//NOTA: este programa estah incompleto. Analize-o e finalize-o como apropriado!
{$CODEPAGE UTF8}
program diaAnterior;
var
    // Variaveis de entrada
    idDia      : integer; // dia do mes
    idMes      : integer; // mes do ano
    idAno      : integer; // ano, no formato AAAA
    // Variaveis auxiliares
    ehBissexto : boolean; // "true" caso idAno seja bissexto
    // Variaveis de saida
    idProxDia  : integer;
    idProxMes  : integer;
    idProxAno  : integer;
    dsMensErro : string;
begin
    // Entrada de dados
    writeln('Entre com o dia');
    readln(idDia);
    writeln('Entre com o mes');
    readln(idMes);
    writeln('Entre com o ano');
    readln(idAno);

    //Processamento
    if ((idDia < 1) or (idDia > 31))  or ((idMes < 1) or (idMes > 12)) then
        begin
            dsMensErro := '>>>>A DATA INFORMADA É INVALIDA<<<';
        end
    else
    if (idDia = 29) then
        dsMensErro := '>>>>A DATA INFORMADA É INVALIDA<<<'
    else
    if (idMes = 01) and (idDia = 01) then
        begin
            // Nessa situacao, vira o ano
            idProxAno := idAno - 1;
            idProxMes := 12;
            idProxDia := 31;
        end
    else
    begin
        idProxAno := idAno; // exceto por 31/12, a proxima data sempre será no mesmo ano informado pelo usuario
    case idMes of
        1, 3, 5, 7, 8, 10, 12: // meses que têm 31 dias
            begin
                if (idDia = 31) then
                    begin
                        idProxDia := -1;
                        idProxMes := idMes - 1;
                        idProxAno := idAno;
                    end
                else
                    Begin
                        idProxDia := idDia - 1;
                        idProxMes := idMes;
                        idProxAno := idAno;
                    end;
            end;
        2: //fevereiro pode ter 28 ou 29 dias, dependendo se o ano eh bissexto.
            begin
                ehBissexto := false;
                if (idAno mod 4 = 0) and (idAno mod 100 <> 0) then
                    ehBissexto := true;
                //
                if idDia > 29 then
                    dsMensErro := '>>>>A DATA INFORMADA É INVALIDA<<<'
                else
                if ehBissexto = true then
                    begin
                        if idDia = 29 then
                            begin
                                idProxDia := 28;
                                idProxMes := idMes;
                            end
                        else
                            begin
                                idProxDia := idDia - 1;
                                idProxMes := idMes;
                            end;
                    end
                else
                    begin
                        if idDia = 28 then
                            begin
                                idProxDia := -1;
                                idProxMes := idMes;
                            end
                        else
                            begin
                                idProxDia := idDia - 1;
                                idProxMes := idMes;
                            end;
                    end;
            end;
        4, 6, 9, 11: // meses que têm 30 dias
            begin
                if (idDia = 30) then
                    begin
                        idProxDia := -1;
                        idProxMes := idMes;
                        idProxAno := idAno;
                    end
                else
                    Begin
                        idProxDia := idDia - 1;
                        idProxMes := idMes;
                        idProxAno := idAno;
                    end;
            end;
    end; // end do "case"
    end; // end do "else"

   // Saida de dados
    writeln;
    writeln('Voce forneceu a data: ', idDia, '/', idMes, '/', idAno);
    writeln;
    writeln('A proxima data eh: ', idProxDia, '/', idProxMes, '/', idProxAno);
    writeln;
    writeln(dsMensErro);
    writeln;
    writeln('Tecle [ENTER] para encerrar...');
    readln;
end.
