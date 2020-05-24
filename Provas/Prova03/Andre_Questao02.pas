// Resposta da prova 11/12/2019
program  Qestao02;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

   var cont : integer;
   
begin

   FOR cont:=10 to 100 do
   begin       

      if (cont mod 10) = 0 then
	      begin
				
					writeln (cont);
					
					if (cont mod 30) = 0 then
						begin
						 writeln;
						end;
	      end;

   end;

	 

  writeln;
	writeln ('---------- \0/ \0/ ------------------------');
  writeln ('Presione [ENTER] para sair...Até a Proxima!'); 
   
   readkey;

end.