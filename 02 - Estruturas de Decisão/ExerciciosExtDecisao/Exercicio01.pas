	 {
	 Escreva um algoritmo que leia dois n�meros fornecidos pelo usu�rio e, conforme o valor deles,
	 exiba uma das seguintes mensagens: O primeiro n�mero informado � o maior,
	 O segundo n�mero � o maior ou Ambos os n�meros s�o iguais.
	 }

program exercicio02;
	uses crt, sysutils;

	var numeroA: Integer;
	var numeroB: Integer;


begin


  writeln('Informe um  numero:');
	readln(numeroA);

	writeln('Informe um  numero:');
	readln(numeroB);

	IF numeroA < numeroB THEN
	
	   Begin
		 
	      writeln('o primeiro umero informado � menor que o segundo numero');
			
		 end
			
	Else IF numeroA > numeroB THEN

		 Begin

	      writeln('o primeiro umero informado � maior que o segundo numero');

		 end

	Else

	   Begin

	      writeln('o primeiro umero informado � igual ao segundo numero');

		 end; 	

   readln;
end.

