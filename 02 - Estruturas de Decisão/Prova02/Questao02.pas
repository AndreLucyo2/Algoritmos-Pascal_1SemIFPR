
Program questao02;
	{$codepage utf8}
	uses crt, sysutils;

	var
	tipoCliente       :Integer;
	formaDePagto      :Integer;
	vlCompra          :real;
	vlDescontoo       :real;
	percDesconto      :real;
	vlCompraComDescont:real;

Begin

	WriteLn('-----------------  DADOS DA COMPPRA -----------------------------------');
	writeln('Qual o valor da compra?');
	readln(vlCompra);

	writeln();
	WriteLn('-----------------  TIPO DE CLIENTE ------------------------------------');
	writeln('Cliente ja Cadastrado?');
	writeln('[0] - Não');
	writeln('[1] - Sim');
	readln(tipoCliente);

	writeln();
	WriteLn('-----------------  FORMA DE PAGAMENTO ---------------------------------');
	writeln('[1] - À vista em dinheiro ou cheque.');
	writeln('[2] - À vista no cartão de credito.');
	writeln('[3] - Parcelado em 2 vezes.');
	writeln('[4] - Parcelado em 3 vezes.');
	readln(formaDePagto);
	writeln();

	If (tipoCliente = 1) Then
		begin
			case formaDePagto of
				1: percDesconto:=0.20;
				
				2: percDesconto:=0.15;
				
				3: percDesconto:=0.10;
				
				4: percDesconto:=0.05;
					
      		end
		end

	Else 
		begin
			case formaDePagto of
				1: percDesconto:=0.15;
				
				2: percDesconto:=0.10;
				
				3: percDesconto:=0.05;
				
				4: percDesconto:=0;
					
        end	
	end;

	//Calculos:
	vlDescontoo       := vlCompra * percDesconto;
	vlCompraComDescont := vlCompra - vlDescontoo;

	writeln();
	writeln('------------------------------------------------------');
  writeln(); 	
	writeln('Vlor da compra sem desconto.........R$',vlCompra:0:2);
	writeln('Desconto concedido ....................',percDesconto:0:2,'%');
	writeln('Valor do desconto ...................R$',vlDescontoo:0:2);
	writeln();
	writeln('------------------------------------------------------');
	writeln();
	writeln('Total a pagar .....................R$',vlCompraComDescont:0:2 );
	writeln();
	writeln('------------------------------------------------------');
	writeln();	
	writeln('Pressione [ENTER] para encerrar.');
	readln;
End.