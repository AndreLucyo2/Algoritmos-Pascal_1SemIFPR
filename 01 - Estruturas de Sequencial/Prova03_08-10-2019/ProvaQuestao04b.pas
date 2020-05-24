program Questao04b;   
   uses crt;

		//calorias por hora:
	 Const CAL_EXERCICIO1 = 533;
	 Const CAL_EXERCICIO2 = 365;
	 Const CAL_EXERCICIO3 = 400;
	 Const CAL_EXERCICIO4 = 584;
	 Const CAL_EXERCICIO5 = 292;

   var inputPeso     :real;
	 var inputHorasExe1:real;
	 var inputHorasExe2:real;
	 var inputHorasExe3:real;
	 var inputHorasExe4:real;
	 var inputHorasExe5:real;

	 var qtdTotCalExe1:real;
	 var qtdTotCalExe2:real;
	 var qtdTotCalExe3:real;
	 var qtdTotCalExe4:real;
	 var qtdTotCalExe5:real; 
	 var qtdTotCalorias:real;



begin

	writeln('Informe peso inicial do aluno em kg: ');
	readln(inputPeso);

	writeln('Informe o tempo em horas, praticando aeróbica de grande impacto: ');
	readln(inputHorasExe1);

	writeln('Informe o tempo em horas, praticando aeróbica de pouco impacto: ');
	readln(inputHorasExe2);

	writeln('Informe o tempo em horas, praticando aeróbicos na agua: ');
	readln(inputHorasExe3);

	writeln('Informe o tempo em horas, praticando basquete: ');
	readln(inputHorasExe4);

	writeln('Informe o tempo em horas, praticando bicicleta (Moderado): ');
	readln(inputHorasExe5);

	qtdTotCalExe1   := ((inputHorasExe1 * CAL_EXERCICIO1) / 70) * inputPeso;

	qtdTotCalExe2   := ((inputHorasExe2 * CAL_EXERCICIO2) / 70) * inputPeso;

	qtdTotCalExe3   := ((inputHorasExe3 * CAL_EXERCICIO3) / 70) * inputPeso;

	qtdTotCalExe4   := ((inputHorasExe4 * CAL_EXERCICIO4) / 70) * inputPeso;

	qtdTotCalExe5   := ((inputHorasExe5 * CAL_EXERCICIO5) / 70) * inputPeso;

	qtdTotCalorias  := qtdTotCalExe1 + qtdTotCalExe2 + qtdTotCalExe3 + qtdTotCalExe4 + qtdTotCalExe5;


  writeln('');
	writeln('');
	
	writeln('Gasto um total de ', qtdTotCalExe1:0:2, ' calorias praticando aeróbica de grande impacto.'); 	
	writeln('');

	writeln('Gasto um total de ', qtdTotCalExe2:0:2, ' calorias praticando aeróbica de pouco impacto.');
	writeln('');

	writeln('Gasto um total de ', qtdTotCalExe3:0:2, ' calorias praticando aeróbicos na agua.');
	writeln('');

	writeln('Gasto um total de ', qtdTotCalExe4:0:2, ' calorias praticando basquete.');
	writeln('');

	writeln('Gasto um total de ', qtdTotCalExe5:0:2, ' calorias praticando bicicleta (Moderado).');
	writeln('');

	writeln('Totalizando ', qtdTotCalorias:0:2, ' calorias gastas.');
	writeln('');


	writeln('..............................................................');
	writeln('Pressione a tecla Enter para sair.');


	readln;


end.