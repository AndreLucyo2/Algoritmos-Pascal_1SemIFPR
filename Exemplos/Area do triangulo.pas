Program Pzim ;
uses crt;
VAR BASE, LADO, AREA:REAL;

Begin
      writeln('*-------------------------------*');
      writeln('|       �REA DO TRI�NGULO       |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*-------------------------------*');
      writeln('');
  writeln('Prima qualquer tecla para continuar...');
      readkey;
      clrscr;
      writeln('Introduza a medida da base to tri�ngulo:');
      readln(BASE);
      clrscr;
      writeln('Introduza a medida do lado do tri�ngulo:');
      readln(LADO);
      clrscr;
      AREA := BASE * LADO / 2;

      writeln('A �rea do rect�ngulo � ',AREA:10:2);
      writeln('Prima qualquer tecla para sair');
      readkey;
End.  