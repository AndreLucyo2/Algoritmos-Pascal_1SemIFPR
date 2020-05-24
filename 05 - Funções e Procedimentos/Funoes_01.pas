	program funcoes;

	  {$codepage UTF8}    //Aceita caracteres epeciais e acentos
        //uses crt, sysutils; // bibliotecas úteis
        var a: real;
		var b: real;

		var resultado:real;

		//--------------------------------------------------------------------
		// Faz soma:
		//--------------------------------------------------------------------
	   procedure somaValores(a,b:real);
	   begin
		   resultado := a+b;
	   end;

	    //--------------------------------------------------------------------
		// Faz subtração:
		//--------------------------------------------------------------------
	   procedure subtraiValores(a,b:real);
	   begin
		   resultado := a-b;
	   end;

	    //--------------------------------------------------------------------
		// Faz multiplicação:
		//--------------------------------------------------------------------
	   procedure multilicaValores(a,b:real);
	   begin
		   resultado := a*b;
	   end;

	   	//--------------------------------------------------------------------
		// Faz divisão:
		//--------------------------------------------------------------------
	   procedure divideValores(a,b:real);
	   begin
		   resultado := a/b;
	   end;


		begin
			writeln('Infrme um numero : ');
            readln(a);

			writeln('Infrme outro um numero : ');
            readln(b);

			somaValores(a,b);
        	writeln('o REsultado da soma é :  ', resultado:0:2);

		    subtraiValores(a,b);
		    writeln('o REsultado da subtração é :  ', resultado:0:2);

			multilicaValores(a,b);
		    writeln('o REsultado da multiplicação é :  ', resultado:0:2);

			divideValores(a,b);
		    writeln('o REsultado da divisão é :  ', resultado:0:2);
        	readln;

		end.