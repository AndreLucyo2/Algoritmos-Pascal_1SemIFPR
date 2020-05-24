// Resposta da prova 11/12/2019
program  Qestao02;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

  const tamVetor  = 17;

  var vetValores  : array [1..tamVetor] of integer;
  var cont        : integer;
  var cont2       : integer;
	var aux         : Integer;

begin

		//Preenche vetor negativo:
    for cont :=1 To tamVetor do
      begin 
	        begin

            if cont=1 then
              begin
              	vetValores[cont] := 0;
              end
            else
              begin							
								vetValores[cont] := cont-1;								
              end; 
	         
	        end;			 
      end;

      cont2:= 5;
			aux :=-1;
      while cont2 < 18 do
      begin 			
        vetValores[cont2] := aux ;				
				aux := aux - 1;					
        cont2:= cont2 + 4 ;
				
      end;
		

		//Preenche vetor negativo:
    for cont :=1 To tamVetor do
      begin
       WriteLn(vetValores[cont]);
      end;

						

	    writeln;	
      writeln ('---------- \0/ \0/ ------------------------');
      writeln ('Presione [ENTER] para sair...Até a Proxima!'); 	 


  readkey;

end.