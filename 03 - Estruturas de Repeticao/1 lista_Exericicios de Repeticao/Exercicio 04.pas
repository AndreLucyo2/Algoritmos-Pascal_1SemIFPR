{
	Projete um algoritmo que imprima uma lista de todos os números ímpares entre 0 e 30.
	Cada número deve ser impresso ao lado do seu dobro e do seu triplo.
}
program exercicio04;
{$codepage UTF8}        // prepara a aplicacao para escrever caracteres acentuados
   uses crt;  // bibliotecas úteis

var //Declaracao de variaveis
      cont, numero : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

   for cont:=0 to 30 do
   begin

     //Mostrar Impares:
     if (cont mod 2 <> 0 ) then  //se numero dividido por 2 for exato é par
       writeln ('impar ',cont);

   end;

   readkey;

end.