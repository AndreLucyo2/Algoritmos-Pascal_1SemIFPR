Program Pzim ;
uses crt;
VAR LADO, AREA:REAL;
Begin
      writeln('*-------------------------------*');
      writeln('|       �REA DO QUADRADO        |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*-------------------------------*');
      writeln('');
      writeln('Prima qualquer tecla para continuar');
      readkey;
      clrscr;
      writeln('Introduza a medida do lado:');
      readln(LADO);
      clrscr;
      AREA := LADO * LADO;
      writeln('A �rea do quadrado � ',AREA:10:2,'.');
      writeln('Prima qualquer tecla para sair');
      readkey;
End.   