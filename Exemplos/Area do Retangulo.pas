Program Pzim ;
uses crt;
VAR COMPRIMENTO, LARGURA, AREA:REAL;
Begin
      writeln('*-------------------------------*');
      writeln('|       �REA DO RECT�NGULO      |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*-------------------------------*');
      writeln('');
  writeln('Prima qualquer tecla para continuar');
      readkey;
      clrscr;
      writeln('Introduza o comprimento do rect�ngulo:');
      readln(COMPRIMENTO);
      clrscr;
      writeln('Introduza a largura do rect�ngulo:');
      readln(LARGURA);
      clrscr;
      AREA := COMPRIMENTO * LARGURA;
      writeln('A �rea do rect�ngulo � ',AREA:10:2,'.');
      writeln('Prima qualquer tecla para sair');
      readkey;
End.   