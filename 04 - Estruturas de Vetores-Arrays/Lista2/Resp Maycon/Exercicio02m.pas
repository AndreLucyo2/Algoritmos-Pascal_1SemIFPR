{$CODEPAGE UTF8}
program Exercicio02;
uses crt;
const
    size = 10;
var
    vet  : array [1..size] of integer;
    cont : integer;
begin
    for cont:=1 to size do
        begin
            vet[cont] := random(10);
        end;
    for cont:=size downto 1 do
        begin
            writeln('Posição numero ',cont,': ',vet[cont]);
        end;
    readkey;
end.

