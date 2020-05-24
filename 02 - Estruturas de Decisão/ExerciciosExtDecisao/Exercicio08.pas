{ 
	Jogo do Dolar - Construa um algoritmo onde o usuário informa o valor do dólar
	no câmbio atual e um certo número de moedas de 1, 5, 10, 25 e 50 centavos de
	real. Se o valor total das moedas for o necessário para comprar exatamente um
	dolar, o programa deve parabenizar o usuário por ganhar o jogo. Caso contrário,
	o programa deve exibir uma mensagem indicando se o valor inserido foi maior ou
	menor do que o necessário.

	Exemplo: se o dólar estiver a R$ 3.78, e o usuário informar 3 moedas de 1 centavo,
  uma de 5 centavos, duas de 10 centavos, duas de 25 centavos e 6 de 50 centavos,
  ele ganha o jogo. O mesmo aconteceria se ele informasse 3 moedas de 1 centavo,
  13 de 25 centavos e uma de cinquenta centavos.

}

Program exercicio08;
	uses crt, sysutils;

	var valDolar : Real;
	var qtd1Centavo : Integer;
	var qtd5Centavo : Integer;
	var qtd10Centavo : Integer;
	var qtd25Centavo : Integer;
	var qtd50Centavo : Integer;

	var val1Centavo  : Real;
	var val5Centavo  : Real;
	var val10Centavo : Real;
	var val25Centavo : Real;
	var val50Centavo : Real;

	var valtotalInformado : Real;

	var msg : Integer;



Begin

WriteLn('---------  INSTRUÇÕES DO JOGO DO DÓLAR  ------------------------------------');
WriteLn();
WriteLn('    1 - Informe o valor do dólar no câmbio atual');
WriteLn('    2 - Informe um certo número de moedas de 1, 5, 10, 25 e 50 centavos de real');
WriteLn('    3 - Acerte o total em Reais, necessário para comprar exatamente um dolar');
WriteLn();

  writeln('Informe o valor do dólar no câmbio atual:');
	readln(valDolar);

	writeln('Informe a quantidade de moedas de 1 centavo de real:');
	readln(qtd1Centavo); 	

	writeln('Informe a quantidade de moedas de 5 centavo de real:');
	readln(qtd5Centavo);

	writeln('Informe a quantidade de moedas de 10 centavo de real:');
	readln(qtd10Centavo);

	writeln('Informe a quantidade de moedas de 25 centavo de real:');
	readln(qtd25Centavo);

	writeln('Informe a quantidade de moedas de 50 centavo de real:');
	readln(qtd50Centavo);
	
	val1Centavo  := qtd1Centavo  * 0.01;
	val5Centavo  := qtd5Centavo  * 0.05;
	val10Centavo := qtd10Centavo * 0.10;
	val25Centavo := qtd25Centavo * 0.25;
	val50Centavo := qtd50Centavo * 0.50;

	valtotalInformado := val1Centavo + val5Centavo + val10Centavo + val25Centavo + val50Centavo;


			
	WriteLn();
  writeln('Qrd. de moedas de 1  centavo :',qtd1Centavo, ' Valor = U$', val1Centavo:0:2 );
	writeln('Qrd. de moedas de 5  centavo :',qtd5Centavo, ' Valor = U$', val5Centavo:0:2 );
	writeln('Qrd. de moedas de 10 centavo :',qtd10Centavo, ' Valor = U$', val10Centavo:0:2 );
	writeln('Qrd. de moedas de 25 centavo :',qtd25Centavo, ' Valor = U$', val25Centavo:0:2 );
	writeln('Qrd. de moedas de 50 centavo :',qtd50Centavo, ' Valor = U$', val50Centavo:0:2 );
	writeln();
	writeln('Total Informado : U$',valtotalInformado:0:2 );
	writeln('Valor de cambio : U$',valDolar:0:2 );
	writeln();
	writeln('Pressione Enter para ver o resultado..................');
	readln();

	If  valtotalInformado = valDolar Then
	    Begin
	    	  writeln('Parabens!!!, com o valor informado voce compra exatamento 1 Dólar!' );
			End

	Else If  valtotalInformado < valDolar  Then
			Begin
	    	   writeln('Ops!!!, faltou dinheiro para comprar pelo menos 1 Dólar! voce Perdeu...' );
					 writeln('Tente novamente...');
			End

	Else
			Begin
	    	   writeln('Aee!!!, Sobrou dinheiro para comprar mais 1 Dólar! Ta podendo! Mass.. voce Perdeu...');
					 writeln('Tente novamente...');
			End ;    

	readln;
End.