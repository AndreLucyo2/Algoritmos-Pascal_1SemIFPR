{
	Crie um programa que fique lendo repetidamente alguns números fornecidos pelo usuário. 
	Se o usuário digitar um valor especial definido por você (digamos, zero, -1 ou 999), 
	o computador deve imprimir a somatória dos números já fornecidos.

	Definição: Esse valor especial que sinaliza o fim de um laço é chamado 
	de valor sentinela. Como esse valor se destina simplesmente a forçar 
	a condição de saída do laço, em geral ele não é aproveitado na lógica do programa.
}

program exercicio07;
{$codepage UTF8}
  uses crt, sysutils;

var
  sentinela,resultado, numero : Integer;
  msg : string;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

	sentinela:=3;
	numero:=0;
	 
	Repeat	
		begin

			writeln('Digite um numero! Sentinela[',sentinela,']');
			readln(numero);
			
			if numero <> sentinela then
				Begin
					resultado:= resultado + numero;
					msg := Concat( msg ,'+',intToStr(numero));
				End;
	    
		end;
	Until (numero = sentinela); 
    
	writeln ('Resultado: ',msg,' = ',resultado); 
  readkey;    

end.