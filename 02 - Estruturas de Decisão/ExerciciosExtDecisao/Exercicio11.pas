program exercicio11;
   uses crt;

	var
	inputSegundos  : integer;
  minutos        : integer;
	segundos       : integer; 
  horas          : integer;
	dias           : integer;
  aux            : integer;

begin
	writeln('Entre com o tempo em segundos: ');
	readln(inputSegundos);


	  If (inputSegundos >= 60) and (inputSegundos < 3600) Then
	    Begin
			    					
					minutos :=  inputSegundos  div 60;//Minutos
					segundos :=  inputSegundos mod 60;//segundos

					writeln('A Quantidade de segundos informada representa : ',minutos,' Minutos e ',segundos,' segundos');
																		
			End

	Else If (inputSegundos >= 3600) and (inputSegundos < 86400)  Then
	    Begin
			
					horas :=  inputSegundos  div 3600;//Minutos
					minutos :=  inputSegundos mod 3600;//segundos

					writeln('A Quantidade de segundos informada representa : ',horas,' Horas e ',minutos,' Minutos');
			End

	Else If (inputSegundos >= 86400) Then
	    Begin
				  dias :=  inputSegundos div 86400;
          horas :=  inputSegundos  mod 86400;//Minutos  					

					writeln('A Quantidade de segundos informada representa : ',dias,' Horas e ',horas,' horas');
					
			End

	Else 
			Begin
					writeln('Valor invalido ou fora da faixa, tente outro valor.');
			End;

	writeln('Tecle ENTER para encerrar ...');

	readln;
end.