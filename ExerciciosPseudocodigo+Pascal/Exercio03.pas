{
			A padaria Hotp�o vende uma certa quantidade de p�es franceses e uma
quantidade de broas a cada dia. Cada p�ozinho custa R$ 0,12 e a broa
custa R$ 1,50. Ao final do dia, o dono quer saber quanto arrecadou
com a venda dos p�es e broas (juntos), e quanto deve guardar numa
conta de poupan�a (10% do total arrecadado). Voc� foi contratado para
fazer os c�lculos para o dono. Com base nestes fatos, fa�a um algoritmo
para ler as quantidades de p�es e de broas, e depois calcular
os dados solicitados.

	vende 100 pf a 0,12

	dende 200 broa a 1,50

	guardar 10%

---------------------------------------------------------------------
}

program exercicio03;
   uses crt, sysutils;

	var qtdPaoFrancesVendido: real;
	var qtdBroaVendida: real;  
	var valPaoFrances:real;
	var valBroa:real;
	var valTotalDePaoVendido: real;
	var valTotalDeBroaVendido: real;
  var valTotal : real;
	var porcentoPoupa: real;
	var valPoupa: real;

begin

	valPaoFrances := 0.12;
	valBroa := 1.50;
	porcentoPoupa := 0.10;


	writeln('Informe quantidade de pao frances:');
	readln(qtdPaoFrancesVendido);

	writeln('Informe quantidade de broa vendida:');
	readln(qtdBroaVendida);     

	valTotalDePaoVendido := ( qtdPaoFrancesVendido * valPaoFrances);

	valTotalDeBroaVendido := (qtdBroaVendida*valBroa);

	valTotal := valTotalDePaoVendido + valTotalDeBroaVendido;

	valPoupa := valTotal * porcentoPoupa; 

	writeln('o valor poupado com 10% do total arrecadado foi : R$',  valPoupa:0:3);

	
	readln;
end.
