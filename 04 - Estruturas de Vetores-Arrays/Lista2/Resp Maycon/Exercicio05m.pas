{$CODEPAGE UTF8}
program Exercicio05;
uses crt;
const
    size = 10;
var
    vet   : array [1..size] of integer;
    cont  : integer;
    vlMax,numPos : integer;
begin
     vlMax := 0;
     cont:=0;
     numPos:=0;
     for cont:= 1 to size do
         begin
             vet[cont] := random(100);
             Writeln(vet[cont]);
         end;
     for cont:= 1 to size do
         if (vet[cont] > vlMax) or (cont = 1) then
             begin
                 vlMax:=vet[cont];
                 numPos := cont;
             end;
    writeln;
    writeln('O maior elemento de N é = ',vlMax,' e a sua posição é: ',numPos,'º');
    readkey;
end.


