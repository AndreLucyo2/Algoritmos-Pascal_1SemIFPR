{
		Uma f�brica de camisetas produz os tamanhos pequeno, m�dio e grande,
		cada uma sendo vendida respectivamente por 10, 12 e 15 reais.
		Construa um algoritmo em que o usu�rio forne�a a quantidade de camisetas
		pequenas, m�dias e grandes referentes a uma venda, e a m�quina
		informe quanto ser� o valor arrecadado.
		
		pequena
		valor pequena
		
		m�dio
		valor m�dia
		
		grande
		valor grande
		
		
		------------------------------------------------------------------
}
program exercicio06;
  uses crt, sysutils;

	var qtdCamP : real;
	var valCamP : real;

	var qtdCamM : real;
	var valCamM : real;

	var qtdCamG : real;
	var valCamG : real;

	var valTotalCamP : real;
	var valTotalCamM : real;
	var valTotalCamG : real;

	var valTotalArrecadado : real;

begin

	valCamP := 10.00;
	valCamM := 12.00;
	valCamG := 15.00;

	writeln('Informe a qtd. de camisetas pequenas vendidas :');
	readln(qtdCamP);

	writeln('Informe a qtd. de camisetas m�dias vendidas :');
	readln(qtdCamM);

	writeln('Informe a qtd. de camisetas grandes vendidas :');
	readln(qtdCamG);

	valTotalCamP := qtdCamP * valCamP;
	valTotalCamM := qtdCamM * valCamM;
	valTotalCamG := qtdCamG * valCamG;      

	valTotalArrecadado := valTotalCamP + valTotalCamM + valTotalCamG;    

	writeln('O total camisas pequenas : R$', valTotalCamP:0:3);
	writeln('O total camisas medias   : R$', valTotalCamM:0:3);
	writeln('O total camisas grandes  : R$', valTotalCamG:0:3);
	
	writeln('O total arrecadado com a venda das camisas foi : R$', valTotalArrecadado:0:3);
	readln;
end.