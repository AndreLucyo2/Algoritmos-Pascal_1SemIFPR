
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
		
		cont:=1;
		
   while (cont < 100) do
	   begin
	
       if (cont mod 2) <> 0 then
          begin
            writeln ('---->>>>>   ',cont);
          end;
					   
					cont:=cont+1;
	   end;

   writeln('Fim:');
   readkey;

end.  