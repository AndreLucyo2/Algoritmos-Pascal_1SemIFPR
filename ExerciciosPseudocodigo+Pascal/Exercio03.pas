{
			A padaria Hotpão vende uma certa quantidade de pães franceses e uma
quantidade de broas a cada dia. Cada pãozinho custa R$ 0,12 e a broa
custa R$ 1,50. Ao final do dia, o dono quer saber quanto arrecadou
com a venda dos pães e broas (juntos), e quanto deve guardar numa
conta de poupança (10% do total arrecadado). Você foi contratado para
fazer os cálculos para o dono. Com base nestes fatos, faça um algoritmo
para ler as quantidades de pães e de broas, e depois calcular
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
