{
	Entrar com o dia e o mês de uma data e informar quantos dias se passaram
  desde o início do ano. Esqueça a questão dos anos bissextos e considere
  sempre que um mês possui 30 dias.

	dia 14
	mes 05

	dias = (4*30)+14;
}

program exercicio06;
  uses crt, sysutils;

	var inputDia : Real;
	var inputMes : Real;
	var diaMes : Real;
	var dias: Real;

begin

	diaMes := 30;

	writeln('Informe e umero do mes:');
	readln(inputMes);

	writeln('Informe dia deste mes:');
	readln(inputDia);   

	dias := ((inputMes - 1)*diaMes) + inputDia;  

	writeln('Total de dias desde o inicio do ano até o dia informado é : ', dias:0:3);

	readln;
end.