
program exercicio01;
//{$codepage UTF8}        // prepara a aplicação para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas úteis

var //Declaração de variáveis
      cont, numero : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

    writeln('Digite um número de 1 a 10, para calcular a tabuada:');
    readln(numero);

   for cont:=0 to 10 do
   begin
     writeln (numero ,' x ',cont ,' = ', numero* cont);

   end;

   readkey;

end.  