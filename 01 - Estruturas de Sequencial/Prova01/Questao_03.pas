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
		
		//preço dos componentes :
		var precoImpressora : Real;
		var precoDiscos     : Real;
		var precoGabinete   : Real;
		var precoFonte      : Real;
		var precoPlacaMae   : Real;
		var precoPentRam    : Real;
		
		//preço dos componentes :
		var sprecoImpressora : Real;
		var sprecoDiscos     : Real;
		var sprecoGabinete   : Real;
		var sprecoFonte      : Real;
		var sprecoPlacaMae   : Real;
		var sprecoPentRam    : Real;

		var valTotal         : Real;

begin

   writeln('Informe o numero computadores: ');
	 readln(numPC);

	 writeln('Informe o custo da impressora: ');
	 readln(precoImpressora);

	 writeln('Informe o custo da unidade de disco: ');
	 readln(precoDiscos);

	 writeln('Informe o custo do gabinete: ');
	 readln(precoGabinete);

	 writeln('Informe o custo da fonte: ');
	 readln(precoFonte);

	 writeln('Informe o custo da placa mae: ');
	 readln(precoPlacaMae);

	 writeln('Informe o custo da memória: ');
	 readln(precoPentRam);

	 //calculo do custo:  ---------------------------------------------------------------------------------------------
	  sprecoImpressora := precoImpressora * numPC * impressora;
		sprecoDiscos     := precoDiscos     * numPC * discos;
	  sprecoGabinete   := precoGabinete   * numPC * discos;
	  sprecoFonte      := precoFonte      * numPC * fonte;
	  sprecoPlacaMae   := precoPlacaMae   * numPC * placaMae;
	  sprecoPentRam    := precoPentRam    * numPC * pentRam;

		valTotal	:= sprecoImpressora + sprecoDiscos + sprecoGabinete + sprecoFonte + sprecoPlacaMae + sprecoPentRam;
	 
	 
    //Calculo das qtd. -----------------------------------------------------------------------------------------------
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


	 writeln('------------------------------------------------------------------------------') ;
   writeln();
	 writeln('    Qtde. de ', numPC:0:0,' computadores');
	 writeln();
	 writeln('-------------  INVESTIMENTO    -----------------------------------------------');
	 writeln();
   writeln('      Preço da Impressora ......................... R$ ', sprecoImpressora:0:2);
	 writeln('      Preço do Disco .............................. R$ ', sprecoDiscos:0:2);
	 writeln('      Preço do Gabinetes .......................... R$ ', sprecoGabinete:0:2);
	 writeln('      Preço da Fonte .............................. R$ ', sprecoFonte:0:2);
	 writeln('      Preço da Placa Mae .......................... R$ ', sprecoPlacaMae:0:2);
	 writeln('      Preço do Pentes de momoria .................. R$ ', sprecoPentRam:0:2);
	 writeln('                                                   ____________');

	 writeln('      Custo Total  ................................ R$ ', valTotal:0:2);


   writeln();


	 writeln('-------------  ITENS / FRETE   -----------------------------------------------');
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

	 writeln('------------------------------------------------------------------------------');

   readkey;

end.