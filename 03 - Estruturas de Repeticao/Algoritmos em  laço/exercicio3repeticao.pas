//3. Escreva um programa que imprima na tela para escrever a tabuada de um número fornecido pelo usuário, de 1 a 10.
program exe3tabuadarepeticao ;

Var
cont , vlNumero , aux : integer ;
begin
     writeln('Entre com o numero para calular a tabuada');
     readln(vlNumero);
 for cont := 1 to 10 do
 Begin
   aux := vlNumero * cont ;
   writeln(vlNUmero , 'X' , cont , '=' , aux );
	 end;
	 readln;

end.