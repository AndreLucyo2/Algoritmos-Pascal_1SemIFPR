

program exercicio10b;
{$codepage UTF8}
  uses crt;

  var //Declara��o de vari�veis
	cliente : String;
	codCliente, numParcela: Integer;
	valorCompra, valorParcela : Real;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

	
		writeln('Digite o codigo do cliente:');
		readln(codCliente);
		
		writeln('Digite o nome do cliente:');
		readln(cliente);

		writeln('Digite valor da compra:');
		readln(valorCompra);

		writeln('Digite numero de parcelas:');
		readln(numParcela);

		while (numParcela < 2 ) or (numParcela > 36) do
			Begin
					writeln ('Numero de Parcela invalida');
					writeln ('Digite um numero de parcelas entre 2 e 36 vezes');
					readln(numParcela);   			
			end;

		//Calculo do valor da parcela:
		valorParcela:= valorCompra/numParcela;

		writeln ();
		writeln ('======  DADOS DA COMPRA ====================');
		writeln ();
		writeln ('Nome do cliente:.....',cliente);
		writeln ('Codigo do cliente:...',codCliente);
		writeln ('Total da compra:..... R$',valorCompra:0:2);
		writeln ('Numero de parcelas...',numParcela);
		writeln ('Valor da parcelas:... R$',valorParcela:0:2);

  readkey;

end.