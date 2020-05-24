{
	Uma loja de informática monta e vende uma determinada configuração de
	computador sob encomenda. Essa configuração é composta pelas seguintes peças:
	a. uma impressora multifuncional;
	b. quatro discos rígidos;
	c. um gabinete;
	d. duas fontes de alimentação;
	e. uma placa mãe;
	f. dois pentes de memória RAM.
	Sabendo disso, resolva os problemas abaixo utilizando algoritmos:

}

program questao2;
   uses crt, sysutils;


		Const impressora = 1;
		Const discos     = 4;
		Const gabinete   = 1;
		Const fonte      = 2;
		Const placaMae   = 1;
		Const pentRam    = 2;

		//Pesos em Kg :
		Const pesoImpressora = 2.5;
		Const pesoDiscos     = 0.75;
		Const pesoGabinete   = 2;
		Const pesoFonte      = 0.5;
		Const pesoPlacaMae   = 0.8;
		Const pesoPentRam    = 0.1;
		Const valFrete        = 10;

		var numPC         : Real;

		//Retorna o peso caculado:
		var qtdImpressora : Real;
		var qtdDiscos     : Real;
		var qtdGabinete   : Real;
		Var qtdFonte      : Real;
		var qtdPlacaMae   : Real;
		var qtdPentRam    : Real;

		var spesoImpressora : Real;
		var spesoDiscos     : Real;
		var spesoGabinete   : Real;
		var spesoFonte      : Real;
		var spesoPlacaMae   : Real;
		var spesoPentRam    : Real;
		var spesoTotal      : Real;

		var valorFrete    : Real;




begin

   writeln('Informe o numero computadores: ');
	 readln(numPC);

   //Calculo das qtd.
   qtdImpressora  := numPC * impressora;
	 qtdDiscos      := numPC * discos;
	 qtdGabinete    := numPC * gabinete;
	 qtdFonte       := numPC * fonte;
	 qtdPlacaMae    := numPC * placaMae;
	 qtdPentRam     := numPC * pentRam;

		//Calculo do peso:
	 	spesoImpressora := qtdImpressora * pesoImpressora;
		spesoDiscos     := qtdDiscos * pesoDiscos;
		spesoGabinete   := qtdGabinete * pesoGabinete;
		spesoFonte      := qtdFonte * pesoFonte;
		spesoPlacaMae   := qtdPlacaMae * pesoPlacaMae;
		spesoPentRam    := qtdPentRam * pesoPentRam;

    spesoTotal := spesoImpressora+spesoDiscos + spesoGabinete + spesoFonte + spesoPlacaMae + spesoPentRam;
	 
		valorFrete :=  spesoTotal * valFrete ;

		
	 writeln('-----------------------------------------------------------') ;
   writeln();
	 writeln('    Qtde. de ', numPC:0:0,' computadore(s)');
	 writeln();
	 writeln('-------------  ITENS    -----------------------------------');
	 writeln();
   writeln('      Peso Impressora ......................... ', spesoImpressora:0:2,' kg');
	 writeln('      Peso Disco .............................. ', spesoDiscos:0:2,' kg');
	 writeln('      Peso Gabinetes .......................... ', spesoGabinete:0:2,' kg');
	 writeln('      Peso Fonte .............................. ', spesoFonte:0:2,' kg');
	 writeln('      Peso Placa Mae .......................... ', spesoPlacaMae:0:2,' kg');
	 writeln('      Qtd. Pentes de momoria .................. ', spesoPentRam:0:2,' kg');
	 writeln('                                            ______________');

	 writeln('      Peso Total do pc ........................ ', spesoTotal:0:2,' kg');

	 writeln();

	 writeln('      Valor do Frete ........................ R$ ', valorFrete:0:2);

   writeln();

	 writeln('-----------------------------------------------------------');

   readkey;

end.