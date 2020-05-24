
Program exercicio03;
Uses crt;
// bibliotecas úteis
Var
  //Declaração de variáveis
  cont, input, numero, maior, menor : Integer;
  media : Real;
  //--------------------------------------------------------------------
  //*                    Inicio do programa
  //--------------------------------------------------------------------
Begin
  numero := 0;
  //Guarda numero para com
  cont := 0;
  //contador de entradas
  menor := 0;
  maior := 0;
  media := 0;
  For cont:=0 To 10 Do
    Begin
      Writeln(cont,' de 10',' Digite um número:');
      Readln(input);
      //Captura o primeiro input
      If cont =0 Then
        menor := input;
      //Descobrir o menor numero digitado
      If input < menor Then
        menor := input;
      //Descobrir o maior numero digitado
      If input > maior Then
        maior := input;
      //Descobrir o média dos numeros digitado
      numero := numero + input;
      //Encrementa ontador
      //cont := cont + 1;
    End;
  //Calcular a média:
  media := numero/cont;
  Writeln ('Menor : ', menor);
  Writeln ('Maior : ', maior);
  Writeln ('Total input : ', numero);
  Writeln ('Media : ', media);
  Readkey;
End.
