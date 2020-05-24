{
	6. Escrever um algoritmo que lê um vetor N(20) e o escreve.
	Troque, a seguir, o 1* elemento com o último, o 2* com o penúltimo, etc até o 10* com o 11* e escreva o
	vetor N assim modificado.
}

{$CODEPAGE UTF8}
program Exercicio06b;
uses crt;

const
    dimVetor = 20;
var
    vetA   : array [1..dimVetor] of integer;
		vetB   : array [1..dimVetor] of integer;
    cont   : integer;
		aux    : Integer;
begin 
     cont:=0;
		 aux := dimVetor;
		 
     for cont:= 1 to dimVetor do
     begin		 
          vetA[cont] := random(100);//Preenche o vetor A
     end;

		 //Inverte o Vetor
		 for cont:= 1 to dimVetor do
     begin
				 	vetB[aux] := vetA[cont] ;//Preenche o vetor B com o vetB invertido.

					aux := dimVetor - cont ;//Decrementa o contador
     end;   
		 

		 //Mostra o vetor A: 
		for cont:= 1 to dimVetor do
     begin 		 				 
         Write(vetA[cont],'-');				
     end;
		 
	   WriteLn();
		 
	 	//Mostra o vetor B: 
		for cont:= 1 to dimVetor do
     begin
				 Write(vetB[cont],'-');
     end;
		 
    readkey;
end.
