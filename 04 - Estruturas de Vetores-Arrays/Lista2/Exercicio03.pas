{
	3. Faça um algoritmo que leia 100 valores e conte quantos são
	pares e quantos são ímpares.
}

{$CODEPAGE UTF8}
program Exercicio03;
uses crt;
const
    dimVetor = 30;
var
    vetA  : array[1..dimVetor] of integer;
    cont 	: integer;
    qtdImpar : Integer;
		qtdPar: integer;
		
begin
			//Instancia a Vaiavel:
			qtdImpar:=0;
			qtdPar  :=0;

			
     for cont := 1 to dimVetor do
         begin
				 
             vetA[cont] := random(300);
						 
             if (vetA[cont] mod 2) = 0 then
                 qtdPar:=qtdPar + 1
             else
                 qtdImpar:=qtdImpar + 1;
         end;

		 writeln;
     writeln('================= INICIO VETOR  ==============================');
		 
		 //Mostra o vetor:
		 For cont:=1 to dimVetor Do
		 Begin
				Writeln(vetA[cont]);
		 end;
		 
		 writeln('================= FIM VETOR  =================================');
				 
     writeln;
     writeln('Quantidade de numeros Pares: ',qtdPar);
     writeln('Quantidade de numeros Impares: ',qtdImpar);
     readkey;
end.
