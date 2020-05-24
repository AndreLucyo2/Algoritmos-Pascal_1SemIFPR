{
	Escrever um algoritmo que lê um vetor N(80) e o escreve. Encontre, a seguir, o
  menor elemento e a sua posição no vetAor N e escreva: "O menor elemento de N é
  = ... e a sua posição é ... ".
}

{$CODEPAGE UTF8}
program Exercicio04;
uses crt;

const
    dimvetAor = 10;
var
    vetA   : array [1..dimvetAor] of integer;
    cont   : integer;
    vlMin,numPos : integer;
begin
     vlmin := 0;
     cont:=0;
     numPos:=0;
		 
     for cont:= 1 to dimvetAor do
     begin
         vetA[cont] := random(100);
         Writeln(vetA[cont]);
     end;
		 
     for cont:= 1 to dimvetAor do
       if (vetA[cont] < vlMin) or (cont = 1) then //So altera o min se encontrar um valor menor que o min. ja salvo
	       begin
	           vlMin:=vetA[cont];
	           numPos := cont;
	       end;
						 
    writeln;
    writeln('O menor elemento de N é = ',vlMin,' e a sua posição é: ',numPos,'º');
    readkey;
end.
