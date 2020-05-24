// Resposta da prova 11/12/2019
program  Qestao02;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

  const tamVetor  = 5; 

  var vetValores  : array [1..tamVetor] of integer;
  var vetSupMedia : array [1..tamVetor] of integer;
  var vetInfMedia : array [1..tamVetor] of integer;
  var cont        : integer;
	var contSup     : integer;
	var contInf     : integer;
	var total       : integer;
	var media       : real;

begin
			total   :=0;
			contSup := 0;
			contInf := 0;
			
		//Preenche vetor com numeros fornecidos:
    writeln('Primeiramente informe ', tamVetor,' valores');
    for cont := 1 to tamVetor do
      begin
        writeln('Informe o valor ', cont, ' de ', tamVetor, ':');
        readln(vetValores[cont]);
				total:= total + vetValores[cont];
      end;

    //Obtem a média:
    media := total/cont;

    for cont := 1 to tamVetor do
      begin
			
        if vetValores[cont] > media then
          begin
					  contSup := contSup + 1;
            vetSupMedia[contSup] := vetValores[cont];
						
          end
        else
          begin
					  contInf := contInf + 1;
            vetInfMedia[contInf] := vetValores[cont];						
          end;
        
      end;

      //imprimie vetores:
			writeln('Valores informados');
      for cont := 1 to tamVetor do
            begin
              writeln(vetValores[cont]);
            end;
						
			writeln;
			writeln('Valor da media :', media:0:2);
      writeln('sup media :', contSup);
      writeln('inf media :', contInf);
			writeln;
						
		  //imprimie vetores:
			writeln('Valor Maior que a media :');
      for cont := 1 to contSup do
        begin              
          write(vetSupMedia[contSup]);
        end;
						
		  //imprimie vetores:
			 writeln('Valor menor que a media :');
      for cont := 1 to contInf do
        begin              
          write(vetInfMedia[contInf]);
        end;						


    writeln('--------------------------------------------');
    writeln ('---------- \0/ \0/ ------------------------');
    writeln ('Presione [ENTER] para sair...Até a Proxima!'); 		 


  readkey;

end.