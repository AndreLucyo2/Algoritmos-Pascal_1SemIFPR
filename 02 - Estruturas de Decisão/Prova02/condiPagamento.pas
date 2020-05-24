program condiPagamento;
{À vista em dinheiro ou cheque 20%
À vista no cartão de crédito 15%
Parcelado em duas vezes 10%
Parcelado em três vezes 5%}
Var
   vlCompra, vlAPagar, vlDescontoP, vlDesconto   : real;
	 stCadastrado    : boolean;
	 aux          : char;
	 idFormaPg    : integer;
Begin
writeln('Informe o valor da compra');
readln(vlCompra);
writeln('Informe se o cliente eh cadastrado ("s" para "sim")');
readln(aux);
stCadastrado := (aux = 's');
writeln('Informe as condicoes de pagamento');
writeln('   1 - A vista');
writeln('   2 - No cartao');
writeln('   3 - Em duas vezes');
writeln('   4 - Em tres vezes');
readln(idFormaPg);
case idFormaPg Of
   1: vlDescontoP := 0.2;
	 2: vlDescontoP := 0.15;
	 3: vlDescontoP := 0.10;
	 4: vlDescontoP := 0.05;
   end; // end case
if (not stCadastrado) Then
   vlDescontoP := vlDescontoP - 0.05;

vlDesconto := vlCompra * vlDescontoP; // valor do desconto
vlAPagar   := vlCompra - vlDesconto;  // Valor com desconto
writeln('O valor de sua compra foi ', vlCompra:0:2, ' reais');
writeln('Seu desconto eh de ', vlDesconto:0:2, ' reais');
writeln('O valor a pagar eh ', vlAPagar:0:2, ' reais');


readln;
end.

