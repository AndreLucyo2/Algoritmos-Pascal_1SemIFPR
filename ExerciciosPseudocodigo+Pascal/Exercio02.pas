{
	Fa�a um algoritmo para calcular quantas ferraduras
	s�o necess�rias para equipar todos os
	cavalos comprados para um haras. 
}

program exercicio02;
   uses crt, sysutils;

	var qtdCavalos: Integer;
	var qtdFerraduras: Integer;
	Const patas =4 ;

begin


  writeln('Digite o total de cavalos:');
	readln(qtdCavalos);

	qtdFerraduras := qtdCavalos * patas ;

	writeln('O total de ferraduras para o numero de cavalos informado � :', qtdFerraduras);
	readln;
end.