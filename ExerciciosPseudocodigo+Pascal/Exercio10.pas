{
	Construa um algoritmo para calcular a distância entre dois pontos do
  plano cartesiano. Cada ponto é um par ordenado (x,y).

  distAB = raiz(( xB - xA)exp 2)+ (( yB - yA)exp 2)

------------------------------------------------------------------
}

program exercicio06;
  uses crt, sysutils;

	var xA, xB ,yA , yB, distAB : real;

begin

	writeln('Informe a coordenada X para o ponto A:');
	readln(xA);

	writeln('Informe a coordenada Y para o ponto A:');
	readln(yA);

	writeln('Informe a coordenada X para o ponto B:');
	readln(xB);

	writeln('Informe a coordenada Y para o ponto B:');
	readln(yB);


	//distAB := raiz((( xB - xA)exp 2)+ (( yB - yA)exp 2));

	distAB := sqrt((sqr( xB - xA))+ (sqr( yB - yA)));
                                                           
	writeln('A distancia entre as coordenadas do ponto A e B é : ', distAB:4:4);//resultado com 4 casas decimais
	readln;
	
end.