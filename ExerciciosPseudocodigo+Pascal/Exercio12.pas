{
	Fa�a um algoritmo para ler o sal�rio de um funcion�rio e aument�-Io
	em 15%. Ap�s o aumento, desconte 8% de impostos.
	Imprima o sal�rio inicial, o sal�rio com o aumento e o sal�rio final.
	 slario inicial 1500,00
	 aunmento de 15% = 1500*0.15
	
	 desconto 8% = sal�rio* 0.92
	
	 desconto 8% = sal�rio - ((sal�rio*8)/100)
	
	 regra de tres:
	 1500 = 100
	 X    = 8
	
	------------------------------------------------------------------
}

program exercicio12;
  uses crt, sysutils;

	var salarioInicial : real;
	var salarioComAumento : real;
	var salarioComDesconto : real;
	var valDesconto : real;
	var valAumento : real;

begin

	writeln('Informe o sal�rio inicial:');
	readln(salarioInicial);

  valAumento := (salarioInicial * 15 )/100;
	
	//Forma A:
	salarioComAumento := salarioInicial + ((salarioInicial * 15 )/100);

	//Forma A:
	salarioComDesconto := salarioComAumento - ((salarioComAumento * 8 )/100);

  valDesconto := (salarioComAumento * 8 )/100;    

	//Forma B:
	//salarioComAumento := salarioInicial* 1.15; 

	//Forma B:
  //salarioComDesconto := salarioComAumento * 0.98;

	writeln('O salario inicial     : R$ ', salarioInicial:0:2);
	writeln('');
	writeln('Valor de aumento      : R$ ', valAumento:0:2);
	writeln('O salario com aumento : R$ ', salarioComAumento:0:2);
	writeln('');
	writeln('Valor de Desconto     : R$ ', valDesconto:0:2);
	writeln('O salario com desconto: R$ ', salarioComDesconto:0:2);

	readln;

end.