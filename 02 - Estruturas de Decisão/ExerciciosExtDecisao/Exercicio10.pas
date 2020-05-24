{

}

Program exercicio10;
	uses crt, sysutils;

	var qtdCompra      : Real;
	var valorDaCompra  : Real;
	var taxaDeDesconto : Real;
	var valorDaCompraComDesconto : Real;
	var valorDoDesconto : Real;

Begin

  writeln('Informe a qtde. da compra :');
	readln(qtdCompra);

	writeln('Informe o valor da compra (R$):');
	readln(valorDaCompra);

  taxaDeDesconto := 0;

  If (qtdCompra >= 10) and (qtdCompra <= 19) Then
	    Begin
	    	  taxaDeDesconto:= 0.20;
			End

	Else If (qtdCompra >= 20) and (qtdCompra <= 49) Then
	    Begin
	    	  taxaDeDesconto:= 0.30;
			End

	Else If (qtdCompra >= 50) and (qtdCompra <= 99) Then
	    Begin
	    	  taxaDeDesconto:= 0.40;
			End

	Else If  (qtdCompra > 100) Then
			Begin
					taxaDeDesconto:= 0.50;
			End;

		valorDoDesconto := 	valorDaCompra * taxaDeDesconto;

	writeln();
	writeln('-----------------------------------------------');
  writeln(); 	
	writeln('Subtotal da compra ... R$',valorDaCompra:0:2 );
	writeln('Desconto ............. R$',valorDoDesconto:0:2,' (' ,(taxaDeDesconto*100):0:0,'%)' );
	writeln();
	writeln('-----------------------------------------------');
	writeln();
	writeln('Total da compra ...... R$',(valorDaCompra-valorDoDesconto):0:2 );
	writeln();
	writeln('Pressione Enter para encerrar..................');


	readln;
End.