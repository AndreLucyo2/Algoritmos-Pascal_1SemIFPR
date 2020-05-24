{$CODEPAGE UTF8}
program Exercicio08;
uses crt;
const
    size = 4;
var
    vetOriginal,vetPar,vetImpar : array [1..5] of integer;
    cont: integer;
begin
    for cont:= 1 to size do
        begin
            vetOriginal[cont] := random(10);
            Writeln('Vetor Original: ',vetOriginal[cont]);
        end;
    Writeln;
    for cont:=1 to size do
        begin
            if vetOriginal[cont] mod 2 = 0 then
                begin
                    vetPar[cont]:= vetOriginal[cont];
                    Writeln('Vetor Par: ',vetPar[cont]);
                end
        end;
    for cont:=1 to size do
        begin
            if vetOriginal[cont] mod 2 = 1 then
                begin
                    vetImpar[cont]:= vetOriginal[cont];
                    Writeln('Vetor Impar: ',vetImpar[cont]);
                end
        end;
    Readkey;
end.

