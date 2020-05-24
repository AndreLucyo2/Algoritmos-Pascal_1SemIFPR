{
		Escreva um algoritmo para ler o nome e a idade de uma pessoa,
e exibir quantos dias de vida ela possui. Considere sempre anos
completos, e que um ano possui 365 dias. Ex: uma pessoa com 19
anos possui 6935 dias de vida; veja um exemplo de saída: MARIA,
VOCÊ JÁ VIVEU 6935 DIAS

----------------------------------------------------------------
}

program exercicio04;
  uses crt, sysutils;

	var nome: string;
	var idade:Integer;
	var diasTotal:Integer;
	var ano: Integer;

begin

	ano := 365;

	writeln('Informe o nome');
	readln(nome);

	writeln('Informe a idade');
	readln(idade); 

	diasTotal := idade* ano;    

	writeln(nome, ' com ', idade, ' anos de idade, viveu ', diasTotal,' dias');
	
	readln;
end.