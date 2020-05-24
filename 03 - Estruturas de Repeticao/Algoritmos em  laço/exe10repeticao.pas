//exe.10
program aplicativodelojas ;

Var
nmCliente                : string ;
idCliente , qtdPrestacao : integer ;
vlPrestacao , vlTotal    : real ;
Begin
	Repeat
			WriteLn('Entre com o nome do cliente');
			Readln(nmCliente);
			WriteLn('Entre com ID cliente');
			Readln(idCliente);
			WriteLn('Entre com o valor total da compra');
			Readln(vlTotal);
			WriteLn('Entre com a quantidade de prestações');
			Readln(qtdPrestacao);
				vlPrestacao := vlTotal / qtdPrestacao;
    If (qtdPrestacao >= 2 ) or (qtdPrestacao <= 36 ) Then
			Begin
				writeln('Nome do cliente ' ,nmCliente, '  ID do cliente ' ,idCliente);
				writeln(' Valor total ' ,vlTotal :0:2,'  Qtd de prestação ',qtdPrestacao,'  Valor das parcelas ' , vlPrestacao :0:2);
				writeln('Aperte ENTER para encerrar o programa');
				Readln;
			end;
	  If (qtdPrestacao <= 1 ) or (qtdPrestacao >= 37 ) Then
			Begin
				writeln('Valor de parcelas invalida');
				writeln('Aperte ENTER para encerrar o programa');
				readln;
			end;
	
	Until ( vlTotal < 0 );
end.