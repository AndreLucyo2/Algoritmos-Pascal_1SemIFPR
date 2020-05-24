{ 
	Uma certa operadora de telefonia m�vel cobra R$ 5,00 mensais pelo seu plano b�sico de
	transmiss�o de SMS (mensagens de texto), sendo que taxas adicionais s�o cobradas conforme as regras abaixo:
	
	a. As primeiras 60 mensagens est�o inclu�das no plano b�sico;
	b. Se o usu�rio mandar mais de 60 mensagens, cada mensagem adicional custar� R$ 0.05, at� o limite de 180 mensagens;
	c. Acima de 180 mensagens, o valor de cada uma delas passa a R$ 0,10;
	d. A soma dos impostos estaduais e federais amonta a 12% do valor de cada fatura.
	
	Com base nessas informa��es, crie um algoritmo para ler o n�mero total de mensagens
	enviadas por um usu�rio. Ao final, calcule o valor da conta e mostre todos os dados,
	incluindo o valor da conta com e sem impostos. 
}

Program exercicio07;
	uses crt, sysutils;

	var qtdSMS : Integer;
	var valFatura  : Real;
	var valFaturaComImposto  : Real;
	var valImposto : Real;

	Const taxa = 0.12;


Begin

  writeln('Informe o total de mensagens para o calculo da fatura:');
	readln(qtdSMS);

	If  qtdSMS <= 60 Then
	    Begin
	    	  valFatura:= 5.00;
			End

	Else If  (qtdSMS > 60) and (qtdSMS <= 180 )  Then
			Begin
	    	  valFatura:=(5.00 + (qtdSMS - 60) * 0.05);
			End

	Else If  (qtdSMS > 180) Then
			Begin
			   
	    	  valFatura:= (5.00 + (qtdSMS - 180) * 0.10) + ((180 - 61) * 0.05);//180-61= 119 ->	61 at� 180 * 0.05
			End;

			valImposto := valFatura * taxa;

			valFaturaComImposto := valImposto + valFatura;

	writeln ('O total de SMS : ',qtdSMS);
	writeln();
	writeln ('Valor da Fatura: R$',valFatura:0:2 );
	writeln();
	writeln ('Total de impostos: R$',valImposto:0:2 );
	writeln();
	writeln ('Total da fatura + imposto: R$',valFaturaComImposto:0:2 );
	

	readln;
End.