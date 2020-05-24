{
		O restaurante a quilo Bem-Bão cobra R$12,00 por cada quilo de refeição.
		Escreva um algoritmo que leia o peso do prato montado pelo cliente
    (em quilos) e imprima o valor a pagar. Assuma que a balança já desconte
    o peso do prato.

			peso refeição 0.459kg
	    valor do kg 12.00

	    valor a pgar = 0.459 * 12.00
}

program exercicio06;
  uses crt, sysutils;

	var valPesoRefeicao : real;
	var valPorKg : real;
	var totalPagar : real;

begin

	valPorKg := 12.00 ;

	writeln('Informe o peso da refeição:');
	readln(valPesoRefeicao);


	totalPagar := valPesoRefeicao * valPorKg;


	writeln('Total a Pagar foi : R$', totalPagar:0:2);
	
	readln;
end.