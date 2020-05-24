

program exercicio10a;
{$codepage UTF8}
   uses crt;

  var //Declara��o de vari�veis
	cliente : String;
	cont, codCliente, numParcela: Integer;
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
		
		//Calculo do valor da parcela:
		valorParcela:= valorCompra/numParcela;

		writeln ();
		writeln ('======  DADOS DA COMPRA ====================');
		writeln ();
		writeln ('Nome do cliente:.....',cliente);
		writeln ('Codigo do cliente:...',codCliente);
		writeln ('Total da compra:..... R$',valorCompra:0:2);
		writeln ('Numero de parcelas...',numParcela);

		for cont := 1 to numParcela do
			begin
				writeln ('Valor da parcela [',cont,']   R$',valorParcela:0:2);
			end;		

  readkey;

end.