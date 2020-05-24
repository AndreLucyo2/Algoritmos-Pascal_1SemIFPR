{
	Escreva um programa que conte em ordem reversa, de 25 a zero.
}
program exercicio05;
{$codepage UTF8}
   uses crt;

var
  cont, numero : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

   for cont:=25 downto 0 do 
   begin      
       writeln ('Numero: ',cont); 
   end;
   readkey;

end.