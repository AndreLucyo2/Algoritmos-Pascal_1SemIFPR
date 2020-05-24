{
	Um motorista deseja colocar no seu tanque X reais de gasolina.
  Escreva um algoritmo para ler o preço do litro da gasolina e
  o valor do pagamento, e exibir quantos litro ele conseguiu colocar
  no tanque.

	valor a pagar 100
	preço por litro 4,5

	litro = 100/4,5
}


program exercicio05;
  uses crt, sysutils;

	var valTotalPagar : real;
	var valDoLitro : real;
	var litro : real;

begin

	writeln('Informe o valor cobrado:');
	readln(valTotalPagar);

	writeln('Informe o custo por litro:');
	readln(valDoLitro);

	litro := valTotalPagar/valDoLitro;

	writeln('Foi abastecido: ', litro:0:2,' de combustivel');

	readln;
end.