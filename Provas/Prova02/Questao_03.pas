	 {
		Uma loja de automóveis paga aos seus vendedores um salário fixo de R$ 2.000,00.
		Somado a isso, cada um deles ganha um bônus de R$ 500,00 por unidade vendida
		e uma comissão de 2% sobre o total vendido. Construa um algoritmo onde o usuário
		forneça a quantidade de carros negociadas por um vendedor num certo mês e o valor
		total dessas transações, informando ao final qual deve ser o salário dele.
    Exemplo: Um dos vendedores vendeu 10 carros, totalizando R$ 200.000,00.
		Então seu salário total será calculado como:
	 }

Program questao01;
	uses crt, sysutils;

	var qtdCarrosVendidos : real;
	var valTotalVenda     : real;
	var valSalario        : real;
	var valComissao       : real;
	var valBonus          : real;

	Const percComissao    = 0.02;
	Const valSalarioFixo  = 2000.00;
	Const bonus           = 500.00;


Begin

	writeln('Informe a quantidade de carros vendidos: ');
	readln(qtdCarrosVendidos);

	writeln('Informe o valor total da venda: ');
	readln(valTotalVenda);

	valComissao := percComissao * valTotalVenda;

	valBonus    := bonus * qtdCarrosVendidos;

	valSalario := valSalarioFixo + valComissao + valBonus;


   writeln('-----------------------------------------------------------') ;
   writeln();
	 writeln('    Qtde. de carros vendidos : ', qtdCarrosVendidos:0:0);
	 writeln('    Valor total da venda     : R$', valTotalVenda:0:2);
	 writeln();
	 writeln('-------------  SALARIO   ----------------------------------');
	 writeln();
   writeln('    Valor da comissao ......................... R$', valComissao:0:2);
	 writeln('    Valor do Bonus............................. R$', valBonus:0:2);

	 writeln('    Sálario ....................................R$', valSalario:0:2);
   writeln(); 
	 writeln('-----------------------------------------------------------');

   readkey;

End.