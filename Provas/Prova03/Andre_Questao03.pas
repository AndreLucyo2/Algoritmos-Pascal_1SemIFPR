// Resposta da prova 11/12/2019
program  Qestao02;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

  var cont : integer;
	var ok : Boolean;
  var limSup : integer;
	var limInf : integer;
	var aux : integer;
   
begin

  limSup :=0;
	limInf :=0;
	aux    :=0;
	ok     :=False;

   writeln('Defina um limite superior!');
   readln(limSup);

   writeln('Defina um limite inferior!');
   readln(limInf);
	 writeln('--------------------------------------------');

   //Corrige Limite:
    if limInf > limSup then
       begin
         aux:= limInf;
         limInf:=limSup; 
         limSup:=aux; 
       end;

   FOR cont:=limInf to limSup do
   begin       

      if ((cont mod 2) = 0) and ((cont mod 3) = 0) then
	      begin				
					writeln (cont);
					ok:=True;			
	      end;

   end;

	 if not ok then
    begin
      writeln('Nenhum numero corresponde a regra!')
    end
    else
    begin
      writeln ('---------- \0/ \0/ ------------------------');
      writeln ('Presione [ENTER] para sair...Até a Proxima!'); 
    end;

	    writeln('--------------------------------------------');		 


  readkey;

end.