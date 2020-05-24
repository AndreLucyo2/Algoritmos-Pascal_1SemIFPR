{
Escreva um algoritmo que leia um número e exiba as seguintes opções na tela, para o usuário escolher uma operação:
1. Elevar ao quadrado;
2. Raiz quadrada;
3. Seno;
4. Exponencial.
Depois que o usuário escolher uma opção digitando um número entre 1 e 4, efetue a função matemática correspondente. O algoritmo deve verificar se a escolha fornecida pelo usuário é válida (ou seja, é um número entre 1 e 4); se não for, então deverá emitir uma mensagem de erro e finalizar.
Assumindo que a variável que você utilizará para armazenar o número que o usuário informar seja chamada de vlNumero, as seguintes funções para lhe permitem calcular as funções pedidas:
• sqr(vlNumero) para elevar ao quadrado;
• sqrt(vlNumero) para tirar a raiz quadrada;
• sin(vlNumero) para calcular o seno;
• exp(vlNumero) para calcular uma exponencial.
Após você criar seu algoritmo, modifique-o para incluir a seguinte opção no menu do usuário:
0. Sair do programa.
}

Program exercicio13;
	uses crt, sysutils, math;

	var numero    : real;
	var resultado : real;
	var menu      : Integer;
	var expoente  : Integer;

	

Begin

    writeln('Informe um numero para o calculo:');
	  readln(numero);

	  writeln('Escolha um opção de calculo:');
		writeln('1. Elevar ao quadrado       ');
		writeln('2. Raiz quadrada            ');
		writeln('3. Seno                     ');
		writeln('4. Exponencial              ');
		writeln('0. Para Sair                ');
	  readln(menu);

			writeln('Calculando ...............');

			If  menu = 1 Then
			    Begin 
						resultado := Sqr(numero);
						writeln('Resultado:', resultado:0:2);
					End
		
			Else If menu = 2  Then
					Begin
			    	resultado := Sqrt(numero);
						writeln('Resultado:', resultado:0:2);
					End
		
			Else If  menu = 3 Then
					Begin
			    	resultado := Sin(numero);
						writeln('Resultado:', resultado:0:2);
					End
		
			Else If menu = 4  Then
					Begin
						writeln('Informe o expoente para o calculo Exponencial:');
	  				readln(expoente);
						
			    		resultado := Power(numero,expoente);
							
						writeln('Resultado:', resultado:0:2);
						
					End
		
			Else If menu = 0  Then
					Begin
						writeln('Saindo...');
					End

			Else
					Begin
							writeln('Pção inválida.O programa sera fechado');
					End;


			


	readln;
End.