{
	6. Escrever um algoritmo que lê um vetor N(20) e o escreve.
	Troque, a seguir, o 1* elemento com o último, o 2* com o penúltimo, etc até o 10* com o 11* e escreva o
	vetor N assim modificado.
}

{$CODEPAGE UTF8}
program Exercicio06;
uses crt;

const
    dimvetAor = 20;
var
    vetA   : array [1..dimvetAor] of integer;
		vetB   : array [1..dimvetAor] of integer;
    cont   : integer;
		aux    : Integer;
    vlMin,numPos : integer;
begin
     vlmin := 0;
     cont:=0;
     numPos:=0;
		 aux := dimvetAor;
		 
     for cont:= 1 to dimvetAor do
     begin
		 
          vetA[cont] := random(100);//Preenche o vetor A
					
				 	vetB[aux] := vetA[cont] ;//Preenche o vetor B com o vetB invertido.
					
					aux := dimvetAor - cont ;//Decrementa o contador
					
     end;

		 //Mostra o vetor A: 
		for cont:= 1 to dimvetAor do
     begin 		 				 
         Write(vetA[cont],'-');				
     end;
		 
	   WriteLn();
		 
	 	//Mostra o vetor B: 
		for cont:= 1 to dimvetAor do
     begin
				 Write(vetB[cont],'-');
     end;
		 
    readkey;
end.