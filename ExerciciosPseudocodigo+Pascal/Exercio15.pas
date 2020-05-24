{

	Três amigos, Carlos, André e Felipe. decidiram rachar
	igualmente a conta de um bar. Faça um algoritmo para ler
	o valor total da conta e imprimir quanto cada um deve
	pagar, mas faça com que Carlos e André não paguem centavos.
	Ex: uma conta de R$101,53 resulta em R$33,00 para
	Carlos, R$33,00 para André e R$35,53 para Felipe.
	
	valor a pagar 112.55;
	
	  112.55/3 = 37.52

}

Program exercicio15;
	uses crt, sysutils;  // bibliotecas úteis

   var carlos : real;
   var andre : real;
   var felipe : real;
   var conta : real;
   var divisao: real;

begin

writeln('Informe o valor total da conta :');
Read(conta);

	divisao := conta/3;

    //pagaga inteiro
	andre := trunc(divisao);

	//pagaga inteiro
	carlos := trunc(divisao);

	//paga a sobra com centavos:
	felipe := conta - (andre + carlos );

	writeln('Andre vai pagar: ', andre:0:3);
	writeln('Carlos vai pagar: ', carlos:0:3);
	writeln('Felipe vai pagar: ', felipe:0:3);
  ReadKey ;

end.