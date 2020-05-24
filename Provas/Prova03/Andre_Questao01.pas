// Resposta da prova 11/12/2019
program  Qestao01;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

   Const	sentinela = 999;

   Var numero : Integer;
   
begin

	numero:=0;
	 
	Repeat	
		begin

			writeln('Digite um numero par!');
			readln(numero);

			if (numero <> sentinela) then
            begin
               if ((numero mod 2) = 0) then
                  Begin					
                     writeln ('Muito Bem!');
                     writeln ('Vamos novamente...!');
                  End
               else
                  begin
                     writeln ('Erro! Numero nao é Par tente outra vez'); 
                  end;
            end;			
	    
		end;
	Until (numero = sentinela); 
    
	writeln ('\0/ \0/'); 
   writeln ('  Parabens, sentinela foi informado...Até a Proxima!'); 
   
   readkey;

end.