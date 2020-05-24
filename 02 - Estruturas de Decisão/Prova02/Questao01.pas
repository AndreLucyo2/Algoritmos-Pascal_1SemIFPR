
Program questao01;
	{$codepage utf8}
	uses crt, sysutils;

	const
	DESC_FAIXA_A = 0.65;   
	DESC_FAIXA_B = 0.40;  
	DESC_FAIXA_C = 0.10;  

	var
	qtdConsumo 	      :real;
	precoKwh 	        :real;
	vlFtura  		      :real;
	vlFturaComDescont :real;
	vlDescontoo       :real;
	percDesconto      :real;

Begin

  writeln('Informe consumo em KWh:');
	readln(qtdConsumo);

	writeln('Informe o preço por KWh:');
	readln(precoKwh);	

	If (qtdConsumo <= 30) Then
		begin
			percDesconto:=DESC_FAIXA_A;
        end

	Else if (qtdConsumo > 30) and (qtdConsumo <= 100)Then
		begin
			percDesconto:=DESC_FAIXA_B;
        end

	Else if (qtdConsumo > 100) and (qtdConsumo <= 220)Then
		begin
			percDesconto:=DESC_FAIXA_C;
        end
	Else if (qtdConsumo < 220)Then
		begin
			percDesconto:= 0 ;
        end;

	//Calculos:
	vlFtura           := qtdConsumo * precoKwh;
	vlDescontoo       := vlFtura * percDesconto;
	vlFturaComDescont := vlFtura - vlDescontoo;

	writeln();
	writeln('------------------------------------------------------');
  writeln(); 	
	writeln('Total da fatura sem desconto.........R$',vlFtura:0:2);
	writeln('Desconto concedido ....................',percDesconto:0:2,'%');
	writeln('Valor do desconto ...................R$',vlDescontoo:0:2);
	writeln();
	writeln('------------------------------------------------------');
	writeln();
	writeln('Total da fatura .....................R$',vlFturaComDescont:0:2 );
	writeln();
	writeln('------------------------------------------------------');
	writeln();	
	writeln('Pressione [ENTER] para encerrar.');
	readln;
End.