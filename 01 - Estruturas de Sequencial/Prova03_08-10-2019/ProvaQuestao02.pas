
program Questao02;
   	uses crt, sysutils;

		//para 1 bochas:
		Const ACUCAR    = 0.03125;  // 1.5/48
		Const MANTEIGA  = 0.02083;  // 1/48
		Const FARINHA   = 0.057292; //2.75/48

		var numBolachas : Real;
		var qtdAcucar   : Real;
		var qtdManteiga : Real;
		var qtdFarinha  : Real;
		
begin

  writeln('Informe o número de bolachas a ser produzido:');
	readln(numBolachas);  

	qtdAcucar   := numBolachas * ACUCAR;
	qtdManteiga := numBolachas * MANTEIGA;
	qtdFarinha  := numBolachas * FARINHA;

	writeln('Para fazer ', numBolachas:0:0,' será necessario:');
	writeln('');
	writeln('          ', qtdAcucar:0:2,' xicaras de açucar:');
	writeln('          ', qtdManteiga:0:2,' xicaras de manteiga:');
	writeln('          ', qtdFarinha:0:2,' xicaras de farinha:');

	writeln('');
	writeln('Pressione a tecla Enter para sair.');

	
	readln;
end.