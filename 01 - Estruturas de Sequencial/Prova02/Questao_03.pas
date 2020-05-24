	 {
		Uma loja de autom�veis paga aos seus vendedores um sal�rio fixo de R$ 2.000,00.
		Somado a isso, cada um deles ganha um b�nus de R$ 500,00 por unidade vendida
		e uma comiss�o de 2% sobre o total vendido. Construa um algoritmo onde o usu�rio
		forne�a a quantidade de carros negociadas por um vendedor num certo m�s e o valor
		total dessas transa��es, informando ao final qual deve ser o sal�rio dele.
    Exemplo: Um dos vendedores vendeu 10 carros, totalizando R$ 200.000,00.
		Ent�o seu sal�rio total ser� calculado como:
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

	 writeln('    S�lario ....................................R$', valSalario:0:2);
   writeln(); 
	 writeln('-----------------------------------------------------------');

   readkey;

End.