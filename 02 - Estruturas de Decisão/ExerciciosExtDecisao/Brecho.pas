{
		Um brechó revende produtos usados, e fixa o preço de venda de cada produto conforme o
		valor de sua aquisição: se o preço de aquisição de um produto é menor do de R$ 50.00,
		ele deve ser vendido por um preço 45% maior; caso contrário, o lucro será de 30%. Sabendo disso,
		construa um algoritmo que leia o valor de aquisição de um produto e mostre o seu valor de venda.
}
Program Brecho;
	uses crt, sysutils;

	var vlrAquisicao : Real;
	var vlrVenda     : Real;

Begin
		writeln('Informe o valor da Aquisição');
    readln(vlrAquisicao);

	If (vlrAquisicao < 50.00) then

       begin
					vlrVenda := vlrAquisicao * 1.45;
       end

   else
	 		vlrVenda := vlrAquisicao * 1.30;


		writeln ('Preço de venda R$', vlrVenda:0:2);
End.