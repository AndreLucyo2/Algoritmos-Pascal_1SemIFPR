{$CODEPAGE UTF8}
program Exercicio04;
uses crt;
const
    size = 80;
var
    vet   : array [1..size] of integer;
    cont  : integer;
    vlMin,numPos : integer;
begin
     vlmin := 0;
     cont:=0;
     numPos:=0;
     for cont:= 1 to size do
         begin
             vet[cont] := random(100);
             Writeln(vet[cont]);
         end;
     for cont:= 1 to size do
         if (vet[cont] < vlMin) or (cont = 1) then
             begin
                 vlMin:=vet[cont];
                 numPos := cont;
             end;
    writeln;
    writeln('O menor elemento de N é = ',vlMin,' e a sua posição é: ',numPos,'º');
    readkey;
end.

