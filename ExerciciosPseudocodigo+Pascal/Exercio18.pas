{
		A empresa Hipotheticus paga R$10,00 por hora normal trabalhada,
		e R$15,00 por hora extra. Faça um algoritmo para calcular e imprimir
		o salário bruto e o salário líquido de um determinado funcionário.
		Considere que o salário líquido é igual ao salário bruto descontando-se
		10% de impostos.
		
			hora normal = 10.00
			hora extra  = 15.00
		
			220 horas normais
			30  horas extra
			10% de desconto
			---------------
			Salario liquido?
}

Program exercicio17;
	uses crt, sysutils;  // bibliotecas úteis

	var qtdHoraNormal : real;
	var qtdHoraExtra : real;
	var valHoraNormal : real;
	var valHoraExtra : real;
	var valTotHoraNormal : real;
	var valTotHoraExtra : real;

	var impostos : real;
	var salarioBruto: real;
	var salarioLiquido:real;

begin

  valHoraNormal := 10.00;
	valHoraExtra  := 15.00;

	impostos := 10;
  impostos := (1 - impostos /100);

	writeln('Informe a quantidade de horas normais trabalhadas :');
	Read(qtdHoraNormal);

	writeln('Informe a quantidade de horas extras trabalhadas :');
	Read(qtdHoraExtra);


	valTotHoraNormal := qtdHoraNormal * valHoraNormal;
	valTotHoraExtra  := qtdHoraExtra * valHoraExtra;

	salarioBruto := valTotHoraNormal + valTotHoraExtra;
	salarioLiquido := salarioBruto * impostos;



	writeln('Valor do salario Bruto : ',salarioBruto:0:2, 'R$' );
	writeln('Valor do salario liquido : ',salarioLiquido:0:2, 'R$' );


  ReadKey ;

end.