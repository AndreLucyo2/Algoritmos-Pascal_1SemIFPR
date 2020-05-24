	 {
		Suponha que o n�mero de quil�metros que um caminh�o roda com um litro de
	diesel diminua 1% a cada 100 kg de carga transportada. Assumindo que o usu�rio
	forne�a o peso da carga, a dist�ncia a ser percorrida e o pre�o do litro de diesel,
	construa um algoritmo que calcule quanto combust�vel � necess�rio para
	transportar uma determinada carga por uma certa dist�ncia, bem como o total gasto
	com combust�vel.
	Exemplo: suponha que o caminh�o vazio consuma 10 km por litro de combust�vel e
	que deva transportar uma carga de 2.000 kg (ou seja, 20 x 100 kg). Nesse caso,
	rodar� 1% x 20 = 20% menos quil�metros por litro, ou seja, 8 km. Dessa forma, se a
	dist�ncia a ser percorrida � de 1.600 km, ser�o gastos 200 litros de diesel. Assim, se
	o diesel custa R$ 4,00 por litro, ser�o gastos R$ 800,00 em combust�vel.
	 }

Program questao01;
	uses crt, sysutils;

	var inputPesoCarg        : real;
	var inputDistancia       : real;
	var inputPrecoLitro      : real;
	var qtdLitrosSemReducao  : real;
	var qtdLitros            : real;
	var consumoMedioPorLitro : real;
	var valCusto             : real;	
	var valTaxaReducao       : real;
	
	Const mediaPorLitro   = 10;
	Const taxaReducao     = 1;


Begin

	writeln('Informe o peso da carga em kg: ');
	readln(inputPesoCarg);

	writeln('Informe a distancia em Km at� o destino: ');
	readln(inputDistancia);

	writeln('Informe o pre�o do litro do Diesel: ');
	readln(inputPrecoLitro);
	
	qtdLitrosSemReducao := inputDistancia / mediaPorLitro;

	valTaxaReducao :=  (inputPesoCarg /100) * taxaReducao;

	qtdLitros :=  qtdLitrosSemReducao * ((valTaxaReducao/100)+1);

  valCusto := qtdLitros *  inputPrecoLitro;
	
   writeln('---------------------------------------------------------------------') ;
   writeln();
	 writeln('    Peso da Carga            : ', inputPesoCarg:0:2, 'kg');
	 writeln('    Distancia do destino     : ', inputDistancia:0:0, 'km');
	 
	 writeln();
	 writeln('-------------  Resumo do calculo do Frete  --------------------------');
	 writeln();
	 writeln('    Total de combustivel bruto        : ', qtdLitrosSemReducao:0:2,' litros');

	 writeln('    Taxa de quebra na media           : ', valTaxaReducao:0:2,'% (+)');

   writeln();

	 writeln('    Qtd. de litros para este frete    : ', qtdLitros:0:2,' litros');

	 writeln('    Pre�o do Litro de Diesel          : R$', inputPrecoLitro:0:2);



	 writeln();

	 writeln('    Custo total do frete              : R$', valCusto:0:2);

   writeln();
	 writeln('---------------------------------------------------------------------');

   readkey;

End.