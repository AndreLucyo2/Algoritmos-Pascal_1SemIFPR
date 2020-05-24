{
	Alguns países medem temperaturas em graus Celsius, e outros em
	graus Fahrenheit. Faça um algoritmo para ler uma temperatura
	Celsius e imprimi-Ia em Fahrenheit (pesquise como fazer este
	tipo de conversão).
}

Program exercicio17;
	uses crt, sysutils;  // bibliotecas úteis

	var celsius : real;
	var fahrenheit : real;

begin


	writeln('Informe a tmperatura em graus Celsius :');
	Read(celsius);

	fahrenheit := (celsius * (9/5)) + 32 ;


	writeln('A tmperatura de ',celsius:0:3,'C° equivale a: ', fahrenheit:0:3,'F°');

  ReadKey ;

end.