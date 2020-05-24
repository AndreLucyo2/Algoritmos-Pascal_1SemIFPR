{
	Projete um algoritmo que imprima uma lista de todos os números ímpares entre 0 e 30.
	Cada número deve ser impresso ao lado do seu dobro e do seu triplo.
}
program exercicio04;
{$codepage UTF8}        // prepara a aplicacao para escrever caracteres acentuados
   uses crt;  // bibliotecas úteis

var //Declaracao de variaveis
      cont, numero : Integer;

			//cores em pascal : https://portalclique.com/textcolor-no-pascal/

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

		textbackground (0);  //Cor de fundo
		textcolor(12); //cor do texto
			
   for cont:=0 to 30 do
   begin

     //Mostrar Impares:
     if (cont mod 2 <> 0 ) then  //se numero dividido por 2 for exato é par				 
				 writeln('Impar..... ',cont);  				 
				 writeln('Dobro..... ', cont * 2);
				 writeln('Triplo.... ', cont * 3 );
				 writeln ();

   end;

   readkey;

end.