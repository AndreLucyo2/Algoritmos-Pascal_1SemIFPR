program exercicio8;

var
  vlUsuario, cont, vlMin, vlMax, vlSoma :integer;
  vlMedia :real;

begin

  repeat
    begin
      writeln('Informe um numero, para sair, insira um numero negativo');
      readln(vlUsuario);

      if (vlUsuario >= 0) then
        begin
          vlSoma := vlSoma + vlUsuario; //armazena a soma
          cont   := cont +1;            //Armazena a quantidade de vezes
          if (vlUsuario > vlMax) or (cont = 1) then
            vlMAx := vlUsuario;

          if (vlUsuario < vlMin) or (cont = 1) then
            vlMin := vlUsuario;
        end;
    end;
  until  vlUsuario < 0;

  vlMedia := vlSoma / cont;

  writeln('A soma dos numeros informados eh ',vlSoma);
  writeln('O Maior numero informado eh ',vlMax);
  writeln('O Menor numero informado eh ',vlMin);
  writeln('A media dos numeros informados eh ',vlMEdia:2:2);
  readln();

  writeln('');
  writeln(' agora com while ');
  writeln('');

  //Inicializa as variaveis
  vlUsuario := 0;
  vlMin     := 0;
  vlMax     := 0;
  vlSoma    := 0;
  vlMedia   := 0;
  cont      := 0;

  writeln('Informe um numero, para sair, informa um numero negativo');
  readln(vlUsuario);
  while (vlUsuario >= 0) do
  begin
     vlSoma := vlSoma + vlUsuario; //armazena a soma
     cont   := cont +1;            //Armazena a quantidade de vezes
     if (vlUsuario > vlMax) or (cont = 1) then
       vlMAx := vlUsuario;

     if (vlUsuario < vlMin) or (cont = 1) then
       vlMin := vlUsuario;

     writeln('Informe um numero, para sair, informa um numero negativo');
     readln(vlUsuario);
  end;

  vlMedia := vlSoma / cont;

  writeln('A soma dos numeros informados eh ',vlSoma);
  writeln('O Maior numero informado eh ',vlMax);
  writeln('O Menor numero informado eh ',vlMin);
  writeln('A media dos numeros informados eh ',vlMEdia:2:2);
  readln();
end.