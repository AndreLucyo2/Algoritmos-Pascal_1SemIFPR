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

	Faça um algoritmo que informe quantas peças de cada tipo
	(impressora, discos, gabinete, fontes, placa mãe e pentes de memória)
	são necessárias para montar uma certa quantidade de computadores;

}

program questao1;
   uses crt, sysutils; 
    

		Const impressora = 1;
		Const discos     = 4;
		Const gabinete   = 1;
		Const fonte      = 2;
		Const placaMae   = 1;
		Const pentRam    = 2;

		var numPC         : Integer;
		var qtdImpressora : Integer;
		var qtdDiscos     : Integer;
		var qtdGabinete   : Integer;
		Var qtdFonte      : Integer;
		var qtdPlacaMae   : Integer;
		var qtdPentRam    : Integer;


begin
	Textbackground(red);
	textcolor(yellow);
	ClrScr;
	
  writeln('Informe o numero computadores: ');
	readln(numPC);

	 qtdImpressora  := numPC * impressora;
	 qtdDiscos      := numPC * discos;
	 qtdGabinete    := numPC * gabinete;
	 qtdFonte       := numPC * fonte;
	 qtdPlacaMae    := numPC * placaMae;
	 qtdPentRam     := numPC * pentRam;

	 writeln('-----------------------------------------------------------') ;
   writeln();
	 
	 //textcolor(black);
	 writeln('    Para montar ', numPC,' compudores');

	 
	 writeln();
	 writeln('-------------  ITENS    -----------------------------------');
	 writeln();
   writeln('      Qtd. Impressora ......................... ', qtdImpressora);
	 writeln('      Qtd. Disco .............................. ', qtdDiscos);
	 writeln('      Qtd. Gabinetes .......................... ', qtdGabinete);
	 writeln('      Qtd. Fonte .............................. ', qtdFonte);
	 writeln('      Qtd. Placa Mae .......................... ', qtdPlacaMae);
	 writeln('      Qtd. Pentes de momoria .................. ', qtdPentRam);
	 
	 writeln();      	 

	 writeln('-----------------------------------------------------------');

  readkey;

end.