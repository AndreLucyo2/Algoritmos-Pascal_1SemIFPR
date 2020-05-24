{
	Os cientistas medem a massa de um objeto em quilogramas
	e seu peso em newtons. O peso em Newtons de um objeto
	pode ser calculado a partir de sua massa por meio da
	seguinte fórmula:
		Peso = Massa × 9,8
  Crie um algoritmo que leia a massa de um objeto e,
	em seguida, calcule seu peso. Se o objeto pesar mais
	de 1.000 Newtons, exiba uma mensagem indicando que é muito
	pesado. Se o objeto pesar menos de 10 Newtons, exiba
	uma mensagem indicando que está muito leve.
 
}

Program exercicio09;
	uses crt, sysutils;

	var massaObj : real;// em Kg
	var peso : Real; //em Newtons 	

	Const aceleracaoGravidade = 9.8;


Begin

WriteLn('---------  INICIO  ------------------------------------');
WriteLn();

  writeln('Informe a massa do objeto em Kg:');
	readln(massaObj);

	peso := massaObj  * aceleracaoGravidade;

	If  peso < 10 Then
	    Begin
			    writeln('Objeto muito leve, seu peso esta abaixo  de 10 Newtons! Peso = ', peso:0:2,'(N)' );
			End

	Else If  peso > 1000  Then
			Begin
	    	 writeln('Objeto muito pesado, seu peso esta acima de 1K Newton! Peso = ', peso:0:2,'(N)' );
			End

	Else
			Begin
	    	   writeln('Objeto com peso OK! Peso = ', peso:0:2,'(N)');
					 writeln('');
			End ;

	readln;
End.