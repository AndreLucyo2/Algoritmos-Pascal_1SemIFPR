{$CODEPAGE UTF8}
program Exercicio03;
uses crt;
const
    size = 100;
var
    vet  : array[1..size] of integer;
    cont : integer;
    vlImpar, vlPar: integer;
begin
     for cont := 1 to size do
         begin
             vet[cont] := random(100);
             if vet[cont] mod 2 = 0 then
                 vlPar:=vlPar + 1
             else
                 vlImpar:=vlImpar + 1;
         end;
     writeln;
     writeln('Quantidade de numeros Pares: ',vlPar);
     writeln('Quantidade de numeros Impares: ',vlImpar);
     readkey;
end.

