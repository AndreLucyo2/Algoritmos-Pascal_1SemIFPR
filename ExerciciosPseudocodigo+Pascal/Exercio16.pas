{
		A lanchonete Gostosura vende apenas um tipo de sandu�che,
	cujo recheio inclui duas fatias de queijo, uma fatia de presunto
	e uma rodela de hamb�rguer.
	Sabendo que cada fatia de queijo ou presunto pesa 50 gramas,
	e que a rodela de hamb�rguer pesa 100 gramas, fa�a um algoritmo em
	que o dono forne�a a quantidade de sandu�ches a fazer, e a m�quina
	informe as quantidades (em quilos) de queijo, presunto e carne
	necess�rios para compra.
	
	 preciso fazer 120 sanduiches
		 2X queijo     50g
		 1X presunto   50g
		 1X hamb�rguer 100g
		 _______________________
		 total de cada igrediente em kg??
}

Program exercicio16;
	uses crt, sysutils;  // bibliotecas �teis

	var qtdSancuiches : real;
	var qtdQueijo : real;
	var qtdPresunto : real;
	var qtdHamburguer: real;
	var qtdQueijoComprar : real;
	var qtdPresuntoComprar : real;
	var qtdHamburguerComprar: real;

begin

	qtdQueijo := 50;
	qtdPresunto :=50;
	qtdHamburguer :=100;

	writeln('Informe a Qtde. de sanduiches :');
	Read(qtdSancuiches);

  qtdQueijoComprar := (qtdQueijo*qtdSancuiches)/1000;
	qtdPresuntoComprar := (qtdPresunto*qtdSancuiches)/1000;
	qtdHamburguerComprar := (qtdHamburguer*qtdSancuiches)/1000;

	writeln('Para fazer ',qtdSancuiches:0:0,' sanduiches');
	//Textcolor(2);
	writeln('ser�o necess�rios: ');
	writeln(qtdQueijoComprar:0:3,'kg de queijo');
	writeln(qtdPresuntoComprar:0:3,'kg de presunto');
	writeln(qtdHamburguerComprar:0:3,'kg de hamb�rguer');
	
  ReadKey ;

end.