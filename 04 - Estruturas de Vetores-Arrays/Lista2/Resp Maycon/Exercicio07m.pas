{$CODEPAGE UTF8}
program Exercicio07;
uses crt;
const
    size  = 4;
    size2 = 4;
    size3 = 4;
var
    vet,vet2,vet3 : array [1..size]  of integer;
    cont: integer;
begin
    cont:=0;
    for cont:=1 to size do
        begin
            vet[cont] := random(10);
            writeln('Vetor 01: ',vet[cont]);
        end;
    Writeln;
    for cont:=1 to size do
        begin
            vet2[cont] := random(10);
            writeln('Vetor 02: ',vet2[cont]);
        end;
    Writeln;
    for cont:=1 to size3 do
        begin
            vet3[cont]:= vet[cont] + vet2[cont] ;
            Writeln('Soma dos vetores 01 e 02: ',vet3[cont]);
        end;
    Readkey;
end.

