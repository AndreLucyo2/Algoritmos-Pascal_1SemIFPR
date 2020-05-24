
program exercicio02;
//{$codepage UTF8}        // prepara a aplicação para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas úteis

var //Declaração de variáveis
      cont, numero : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

    writeln('Inicio:');

   for cont := 0 to 100 do
	   begin
	
	         if (cont mod 2) <> 0 then
	            begin
	              writeln ('---->>>>>   ',cont);
	            end;     
	
	   end;

   writeln('Fim:');
   readkey;

end.  