{
			2) Construa um algoritmo que converta um valor dado em segundos para horas, minutos e segundos.
	Exemplo: 153 segundos equivalem a 0 hora, 2 minutos e 33 segundos.
	Lembre: uma hora tem 60 minutos, e um minuto tem 60 segundos.
	Dica: vocъ pode usar o operador MOD e/ou a funчуo trunc para resolver esse problema.

	ex: 7215 |3600 DIVIDE
	    7200 ииии
			ииии  2hs sobra
			0015min    -----> 7215 MOD 3600

					15|60   DIVIDE
					0 ииии
				 иии 0
				 15 seg    ----> 15 MOD 60

	
}

Program questao01;
	uses crt, sysutils;

	var inputSegundos:integer;
	var horas        :integer;//tem 3600seg
	var minutos      :integer;//tem 60 seg
	var auxMinutos   :Integer;
	var segundos     :integer;


Begin

	writeln('Informe o tempo em segundos: ');
	readln(inputSegundos);

	horas   := trunc(inputSegundos/3600); //um hora tem 3600 seg
	
	auxMinutos := inputSegundos mod 3600;  //Variavel auxiliar.

	minutos := trunc(auxMinutos / 60);

	segundos := inputSegundos mod 60; 	

	writeln(inputSegundos, ' segundos equivalem a ',
	        horas        , ' horas, ',
	        minutos      , ' minutos ',
	        segundos     , ' segundos.');	

End.                           
	

