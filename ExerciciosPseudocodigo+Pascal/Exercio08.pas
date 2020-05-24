{
	Faça um algoritmo para ler três notas de um aluno em uma disciplina
	e imprimir a sua média ponderada (as notas tem pesos
	respectivos de 1, 2 e 3).
	
		nota1 := ?
		peso1 := 1
	
		nota2 := ?
		peso2 := 2
	
		nota3 := ?
		peso3 := 3
	
	Média ponderada:
	Mp = (n1*p1)+(n2*p2)+(n3*p3)+...
	     ---------------------------
		        p1+p2+p3 ....

------------------------------------------------------------------
}
program exercicio06;
  uses crt, sysutils;

	var nota1 : real;
	var peso1 : real;

	var nota2 : real;
	var peso2 : real;

	var nota3 : real;
	var peso3 : real;

	var mediaPond : real;

begin

	peso1 := 1;
	peso2 := 2;
	peso3 := 3;

	writeln('Informe nota 1 :');
	readln(nota1);

	writeln('Informe nota 2 :');
	readln(nota2);

	writeln('Informe nota 3 :');
	readln(nota3);

	mediaPond := ((nota1 * peso1)+(nota2 * peso2)+(nota3 * peso3)) / (peso1+peso2+peso3) ;


	writeln('A média ponderada com as notas informadas é : ', mediaPond:3:3);
	readln;
end.