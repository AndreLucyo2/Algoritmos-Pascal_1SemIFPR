	 {
	 Escreva um algoritmo que leia dois números fornecidos pelo usuário e, conforme o valor deles,
	 exiba uma das seguintes mensagens: O primeiro número informado é o maior,
	 O segundo número é o maior ou Ambos os números são iguais.
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
		 
	      writeln('o primeiro umero informado é menor que o segundo numero');
			
		 end
			
	Else IF numeroA > numeroB THEN

		 Begin

	      writeln('o primeiro umero informado é maior que o segundo numero');

		 end

	Else

	   Begin

	      writeln('o primeiro umero informado é igual ao segundo numero');

		 end; 	

   readln;
end.

