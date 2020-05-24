//11.
program lojadeutilidades ;

Var
nmCliente                      : string;
idCliente , qtdPrestacao       : integer;
vlPrestacao , vlTotal , vlJuro , vlAtraso : real;
vlVencido                      : Char;
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
			writeln('A parcela esta vencida S - sim | N - nao ');
			readln(vlVencido);

				vlPrestacao:= vlTotal / qtdPrestacao;
				vlJuro     := (vlTotal *0.01)+vlTotal;

    If (qtdPrestacao >= 2 ) or (qtdPrestacao <= 36 ) Then
			Begin
				writeln('Nome do cliente ' ,nmCliente, '  ID do cliente ' ,idCliente);
				writeln(' Valor total ' ,vlTotal :0:2,'  Qtd de prestação ',qtdPrestacao,'  Valor das parcelas ' , vlPrestacao :0:2);
				writeln('Valor com juros aplicado ' , vlJuro :0:2);
				writeln('Aperte ENTER para encerrar o programa');
				Readln;
			end;

		If (vlVencido = 'S') Then
				vlPrestacao := vlTotal / qtdPrestacao;
				vlJuro  := (vlTotal *0.01)+vlTotal;
        vlAtraso:= (vlJuro*0.10)+vlJuro;
			Begin
				writeln('Nome do cliente ' ,nmCliente, '  ID do cliente ' ,idCliente);
				writeln(' Valor total ' ,vlTotal :0:2,'  Qtd de prestação ',qtdPrestacao,'  Valor das parcelas ' , vlPrestacao :0:2);
				writeln('Valor com juros aplicado ' , vlJuro :0:2 ,' Valor pago por atraso ' ,vlAtraso :0:2);
				writeln('Aperte ENTER para encerrar o programa');
				Readln;
			end;

	Until ( vlTotal < 0 );
end.