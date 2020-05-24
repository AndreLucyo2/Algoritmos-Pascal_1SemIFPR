
program exercicio02;
   { $codepage UTF8 }    // prepara a aplicação para escrever caracteres acentuados
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
            writeln(cont,' de 20',' Digite um número:');
            readln(input);

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
            numero := numero + input;

            //Encrementa ontador
            inc(cont);
            // cont := cont + 1;

    until cont = 20;

    //Calcular a média:
    media:= numero/cont;

    writeln ('Menor : ', menor);
    writeln ('Maior : ', maior);
    writeln ('Total input : ', numero);
    writeln ('Media : ', media);

   readkey;

end.