{
	Escreva um algoritmo que leia tr�s n�meros fornecidos pelo usu�rio
	e mostre se a soma de dois deles resulta no terceiro.
}
Program exercicio04;
	uses crt, sysutils;

	var numeroA: Integer;
	var numeroB: Integer;
	var numeroC: Integer;

Begin

  writeln('Informe o primeiro numero:');
	readln(numeroA);

	writeln('Informe o segundo numero:');
	readln(numeroB);

	writeln('Informe o terceiro numero:');
	readln(numeroC);  	

	If (numeroA + numeroB) = numeroC Then
	
		   begin

          writeln ('Soma do primeiro numero + o segundo � ugual ao terceiro ');

       end

	Else if (numeroA + numeroC) = numeroB Then

	     begin

          writeln ('Soma do primeiro numero + o terceiro � ugual ao segundo');

       end

	Else if (numeroB + numeroC) = numeroA Then

	     begin

          writeln ('Soma do segundo numero + o terceiroo � ugual ao primeiro ');

       end

		Else

		   begin

          writeln ('A soma de 2 dos 3 numeros informado, nao resulta em igualdade.');

       end;

	readln;
End.