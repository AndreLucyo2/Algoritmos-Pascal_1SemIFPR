{
		Um brech� revende produtos usados, e fixa o pre�o de venda de cada produto conforme o
		valor de sua aquisi��o: se o pre�o de aquisi��o de um produto � menor do de R$ 50.00,
		ele deve ser vendido por um pre�o 45% maior; caso contr�rio, o lucro ser� de 30%. Sabendo disso,
		construa um algoritmo que leia o valor de aquisi��o de um produto e mostre o seu valor de venda.
}
Program exercicio03;
	uses crt, sysutils;

	var vlrAquisicao : Real;
	var vlrVenda     : Real;

Begin

		writeln('Informe o valor da Aquisi��o');
    readln(vlrAquisicao);

	If (vlrAquisicao < 50.00) then

       begin
					vlrVenda := vlrAquisicao * 1.45;

          writeln ('Com valor da aquisi��o de R$',vlrAquisicao:0:2,' o pre�o de venda deve ser 45% maior.');
					writeln ('Pre�o de venda R$', vlrVenda:0:2)
					
       end

   else
	 
	   Begin
	 		    vlrVenda := vlrAquisicao * 1.30;
			    writeln ('Com valor da aquisi��o de R$',vlrAquisicao:0:2,' o pre�o de venda deve ser 30% maior.');
					writeln ('Pre�o de venda R$', vlrVenda:0:2)
		 end;

		readln;
End.