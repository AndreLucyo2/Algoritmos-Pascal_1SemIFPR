Program Pzim ;
uses crt;
VAR BASE, LADO, AREA:REAL;

Begin
      writeln('*-------------------------------*');
      writeln('|       ÁREA DO TRIÂNGULO       |');
      writeln('| Programado por Fábio Oliveira |');
      writeln('*-------------------------------*');
      writeln('');
  writeln('Prima qualquer tecla para continuar...');
      readkey;
      clrscr;
      writeln('Introduza a medida da base to triângulo:');
      readln(BASE);
      clrscr;
      writeln('Introduza a medida do lado do triângulo:');
      readln(LADO);
      clrscr;
      AREA := BASE * LADO / 2;

      writeln('A área do rectângulo é ',AREA:10:2);
      writeln('Prima qualquer tecla para sair');
      readkey;
End.  