
program exercicio04;
{$codepage UTF8}        // prepara a aplicação para escrever caracteres acentuados
   uses crt;  // bibliotecas úteis

var //Declaração de variáveis
      cont, numero : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

   for cont:=99 to 300 do
   begin

     //Mostrar Impares:
     if (cont mod 2 <> 0 ) then  //se numero dividido por 2 for exato é par
       writeln ('impar ',cont);

   end;

   readkey;

end.
