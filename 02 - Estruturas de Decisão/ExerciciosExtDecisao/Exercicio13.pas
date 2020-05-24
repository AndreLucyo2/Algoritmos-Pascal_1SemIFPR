{
Escreva um algoritmo que leia um n�mero e exiba as seguintes op��es na tela, para o usu�rio escolher uma opera��o:
1. Elevar ao quadrado;
2. Raiz quadrada;
3. Seno;
4. Exponencial.
Depois que o usu�rio escolher uma op��o digitando um n�mero entre 1 e 4, efetue a fun��o matem�tica correspondente. O algoritmo deve verificar se a escolha fornecida pelo usu�rio � v�lida (ou seja, � um n�mero entre 1 e 4); se n�o for, ent�o dever� emitir uma mensagem de erro e finalizar.
Assumindo que a vari�vel que voc� utilizar� para armazenar o n�mero que o usu�rio informar seja chamada de vlNumero, as seguintes fun��es para lhe permitem calcular as fun��es pedidas:
� sqr(vlNumero) para elevar ao quadrado;
� sqrt(vlNumero) para tirar a raiz quadrada;
� sin(vlNumero) para calcular o seno;
� exp(vlNumero) para calcular uma exponencial.
Ap�s voc� criar seu algoritmo, modifique-o para incluir a seguinte op��o no menu do usu�rio:
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

	  writeln('Escolha um op��o de calculo:');
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
							writeln('P��o inv�lida.O programa sera fechado');
					End;


			


	readln;
End.