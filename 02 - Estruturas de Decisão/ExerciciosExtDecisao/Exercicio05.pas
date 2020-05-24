{
	O programa de fidelidade de uma determinada livraria premia seus clientes de
	acordo com o n�mero de livros comprados a cada m�s. Os pontos s�o atribu�dos da seguinte forma:
		� Se um cliente comprar 0 livros, ele ganhar� 0 pontos.
		� Se um cliente comprar um livro, ele ganhar� 5 pontos.
		� Se um cliente comprar dois livros, ele ganhar� 15 pontos.
		� Se um cliente comprar 3 livros, ele ganhar� 30 pontos.
		� Se um cliente comprar 4 ou mais livros, ele ganhar� 60 pontos.
		
  Crie um algoritmo que leia o n�mero de livros comprado por um usu�rio
	e exiba o n�mero de pontos correspondentes.

	
}

Program exercicio05;
	uses crt, sysutils;

	var qdtLivro : Integer;
	var qdtPontos : Integer;

Begin

  writeln('Informe a quantidade de livros comprados:');
	readln(qdtLivro);


	If  qdtLivro = 0 Then 	
	    Begin		
	    	  qdtPontos:= 0;
			End

	Else If  qdtLivro = 1 Then
			Begin
	    	  qdtPontos:= 5;
			End

	Else If  qdtLivro = 2 Then
			Begin
	    	  qdtPontos:= 15;
			End
			
	Else If  qdtLivro = 3 Then
			Begin
	    	  qdtPontos:= 30;
			End
			
	Else If  qdtLivro >= 4 Then
			Begin
	    	  qdtPontos:= 60;
			End;  

			writeln ('Comprando ', qdtLivro ,' livro(s), o Cliente granha ', qdtPontos ,' pontos.');

	readln;
End.