{
	Calcule a �rea de uma pizza que possui um raio R (pi=3.14).

 	A = Pi * R�
}

Program exercicio14;
	uses crt, sysutils;  // bibliotecas �teis
			 
	var raio : real;
	var area : real;  
	const pi = pi;

begin



	writeln('Informe o raio da pizza :');
	readln(raio);
                 
	area := pi * (sqr(raio));


	writeln('A area calculada �: ', area:3:3 );
	
  ReadKey ;

end.