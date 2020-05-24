program exercicio08;
{$codepage UTF8}
  uses crt, sysutils;

   var //Declaração de variáveis
      cont, input, total, maior, menor : Integer;
      media : Real;
			msg : string;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

	total:=0; //Guarda numero para com
	cont  :=0; //contador de entradas
	menor :=0;
	maior :=0;
	media :=0;   

  repeat
  
		 writeln('Digite um numero');
	   readln(input); 
	   
	   if input > 0 then
	   
				begin				
					//Captura o primeiro input
					if cont =0 then
					menor :=input;
						
					//Descobrir o menor numero digitado
					if input < menor then
					menor := input;
					
					//Descobrir o maior numero digitado
					if input > maior then
					maior := input;
					
					//Descobrir o média dos numeros digitado
					total:= total + input;
					
					//Encrementa contador
					inc(cont);

					msg := Concat( msg ,'+',intToStr(input));
							
				end; 
    
  until input < 0;
	  
    //Mostra resultado  
    //CALCULO DA MEDIA
    media:= total/cont;

    writeln ('Menor : ', menor);
    writeln ('Maior : ', maior);
    writeln ('Total input : ',msg,' = ', total);
    writeln ('Media : ', media:0:2);
    
  readkey;    

end.