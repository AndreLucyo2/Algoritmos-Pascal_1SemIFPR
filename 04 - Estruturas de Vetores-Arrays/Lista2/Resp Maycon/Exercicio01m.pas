{$CODEPAGE UTF8}
program Exercicio01;
uses crt;
const
    size = 10;
var
    vetA : array [1..size] of integer;
    cont : integer;
begin
    for cont:= 1 to size do
        begin
            vetA[cont] := random(10); // random informa automaticamente os valores
        end;
    for cont:=1 to size do
        Writeln('Posição numero ',cont,': ',vetA[cont]);

    readkey;
end.

