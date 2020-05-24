{

}

Program exercicio06;
	uses crt, sysutils;

	var pesoEncomentda : Real;
	var preco          : Real;

Begin

  writeln('Informe o peso da encomenda:');
	readln(pesoEncomentda);

	If  pesoEncomentda <= 0.5 Then
	    Begin
	    	  preco:= 1.10;
			End

	Else If  (pesoEncomentda > 0.5) and (pesoEncomentda <= 2 )  Then
			Begin
	    	  preco:= 2.20;
			End

	Else If  (pesoEncomentda > 2) and (pesoEncomentda <= 10 )  Then
			Begin
	    	  preco:= 3.70;
			End
			
	Else If  (pesoEncomentda > 10 )  Then
			Begin					
	    	  preco:= (5.00 + (pesoEncomentda - 10) * 3.8);
					
			End;		

	writeln ('Para encomenda com peso de  ', pesoEncomentda:0:2 ,'Kg, o Cliente pagará R$', preco:0:2);

	readln;
End.