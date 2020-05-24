
program exercicio05;
 // prepara a aplicação para escrever caracteres acentuados
   uses crt;  // bibliotecas úteis

var //Declaração de variáveis
      cont, input, numero, maior, menor : Integer;
      media : Real;
//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin
   numero:=0; //Guarda numero para com
   cont  :=0; //contador de entradas
   menor :=0;
   maior :=0;
   media :=0;

    repeat
            writeln(cont,' Digitados',' Digite um número:');
            readln(input);

            //Descobrir o menor numero digitado
            if (input < 99) or (input > 201)  then
                //Encrementa ontador
                 cont := cont + 1;

    until input = 0;

    //Calcular a média:
    media:= numero/cont;

    writeln ('Menor : ', menor);
    writeln ('Maior : ', maior);
    writeln ('Total input : ', numero);
    writeln ('Media : ', media);

   readkey;

end.