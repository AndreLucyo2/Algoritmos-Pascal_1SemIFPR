Program Pzim ;
uses crt;
VAR NUM1, NUM2, CONTROL:INTEGER;
Begin
      writeln('*===============================*');
      writeln('|       NUMERO MAIOR EM 2       |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*===============================*');
      writeln('');
      writeln('Prima qualquer tecla para continuar...');
      readkey;
      clrscr;

      {LER VARIAVEIS}
      writeln('Insira o primeiro numero:');
      readln(NUM1);
      clrscr;

      writeln('Insira o segundo numero:');
      readln(NUM2);
      clrscr;

      {CALCULAR RESULTADO}
      IF NUM1 > NUM2
      THEN CONTROL := NUM1
      ELSE CONTROL := NUM2;

      {MOSTRAR RESULTADO}
      writeln('O numero maior � ',CONTROL,'.');
      writeln('Prima qualquer tecla para sair...');
      readkey;
End.