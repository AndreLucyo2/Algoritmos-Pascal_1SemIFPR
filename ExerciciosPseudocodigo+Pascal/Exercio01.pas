{
	A imobiliária Imóbilis vende apenas terrenos retangulares.
	Faça um algoritmo para ler as dimensões de um terreno e
	depois exibir a área do terreno.
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

	writeln('A area calcula é :', area:0:3);
	readln;
end.