{
	A imobili�ria Im�bilis vende apenas terrenos retangulares.
	Fa�a um algoritmo para ler as dimens�es de um terreno e
	depois exibir a �rea do terreno.
}

program exercicio01;  
   uses crt, sysutils;

var
 largura: real;
 altura : real;
 area : real;

begin

  writeln('Digite a largura:');
	readln(largura);

	writeln('Digite a altura:');
	readln(altura);

	area := largura * altura;

	writeln('A area calcula � :', area:0:3);
	readln;
end.