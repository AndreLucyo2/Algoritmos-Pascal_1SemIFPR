program sistaciaEntreAB;
{$codepage UTF8}      // prepara a aplica��o para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas �teis

//--------------------------------------------------------------------
//*                    Declare variaveis:
//--------------------------------------------------------------------

var //Declara��o de vari�veis
      x1, x2 , y1, y2, distAB : Real;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

  writeln('Informe a coordenada X para o ponto A:');
	readln(x1);

	writeln('Informe a coordenada Y para o ponto A:');
	readln(y1);

	writeln('Informe a coordenada X para o ponto B:');
	readln(x2);

	writeln('Informe a coordenada Y para o ponto B:');
	readln(y2);


	distAB := Sqrt((Sqr( x2 - x1))+(Sqr( y2 - y1)));

  //writeln('A distancia entre as coordenadas do ponto A e B � : ',Trunc(distAB));
	writeln('A distancia entre as coordenadas do ponto A e B � : ',distAB:3:4);

  readkey;

end.