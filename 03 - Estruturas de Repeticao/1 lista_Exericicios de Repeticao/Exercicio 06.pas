{
	Crie um programa para que retorne o somat�rio de todos os
	n�meros entre 1 e um valor fornecido pelo usu�rio.
	Por exemplo, se o usu�rio fornecer o n�mero 4,
	o computador dever� calcular o somat�rio 1+ 2 + 3 + 4 = 10.
}

program exercicio06;
{$codepage UTF8}
   uses crt, sysutils;
	var
	  cont, resultado, numero : Integer;
	  msg : string;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

	writeln('Digite um numero:');
	readln(numero);
   
  cont:=0;  
	while (cont <= numero) do 	
	begin 
			  
	  if (cont <>0) then
	  begin
			msg := Concat( msg ,'+',intToStr(cont));
			resultado:= cont + resultado; 
	  end;   
	  
	  cont:= cont+1;
	end; 
    
	writeln ('Resultado: ',msg,' = ',resultado); 
  readkey;    

end.