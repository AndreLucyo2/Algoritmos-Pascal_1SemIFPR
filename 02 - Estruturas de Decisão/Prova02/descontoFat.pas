program descontoFat;
Var
   vlFatura, vlDesconto      : real;
	 vlConsumo, vlKwh          : real;
	 vlDescPerc                : real;
Begin
writeln('Entre com o consumo do cliente');
readln(vlConsumo);
writeln('Entre com o valor do kwh');
readln(vlKwh);
if (vlConsumo>220) Then
	 vlDescPerc := 0
else if (vlConsumo>100) Then
	 vlDescPerc := 10
else if (vlConsumo>30) Then
	 vlDescPerc := 40
else
	 vlDescPerc := 65;

vlFatura   := vlConsumo * vlKwh;
vlDesconto := (vlDescPerc * vlFatura)/100;


writeln('Voce consumiu ', vlConsumo:0:2, ' Kwh');
writeln('O valor de sua fatura eh ', vlFatura:0:2, ' Kwh');
writeln('O seu desconto eh ', vlDescPerc:0:2, ' %, o que equivale a ',
        vlDesconto:0:2, ' reais.');
writeln('Voce pagara ', (vlFatura-vlDesconto):0:2, ' reais');

readln;
end.


