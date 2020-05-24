

program exercicio10b;
{$codepage UTF8}
  uses crt;

  var //Declara��o de vari�veis
	cliente : String;
	sentinela, cont, codCliente, numParcela: Integer;
	valorCompra, valorParcela : Real;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

  sentinela :=-1;
	codCliente:= 0;

	while (codCliente <> sentinela) do
		Begin	
	
				writeln('Digite o codigo do cliente:');
				readln(codCliente);
				
				writeln('Digite o nome do cliente:');
				readln(cliente);
		
				writeln('Digite valor da compra:');
				readln(valorCompra);
		
				writeln('Solicite um numero de parcelas:');
				readln(numParcela);
		
				while (numParcela < 2 ) or (numParcela > 36) do
					Begin
							writeln ('Numero de Parcela invalida');
							writeln ('Digite um numero de parcelas entre 2 e 36 vezes');
							readln(numParcela);   			
					end;
		
				//Calculo do valor da parcela:
				valorParcela:= valorCompra/12;
		
				writeln ();
				writeln ('======  DADOS DA COMPRA ====================');
				writeln ();
				writeln ('Nome do cliente:.....',cliente);
				writeln ('Codigo do cliente:...',codCliente);
				writeln ('Total da compra:..... R$',valorCompra:0:2);
				writeln ('Numero de parcelas solicitado...',numParcela);
				
				writeln ();
				writeln ('Numero de parcelas calculado.... 12');
		
				for cont := 1 to 12 do
				begin
					writeln ('Valor da parcela [',cont,']   R$',valorParcela:0:2);
				end;

				writeln ('-------------------------------------------------------------');
				writeln ();

		end;

		writeln ();
		writeln ('======  FIM DO CADSTRO ====================');
		writeln ();

  readkey;

end.