Program numeros;
uses crt;
var  num, i, nrnumeros, soma : integer;
    control : string;

 Begin
      writeln('*===============================*');
      writeln('| Ler n numeros e par ou impar  |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*===============================*');
      writeln('');
  writeln('Prima qualquer tecla para continuar...');
      readkey;
      clrscr;
      writeln('Quantos numeros quer somar?');
      readln(nrnumeros);
      clrscr;
      for i:=1 to nrnumeros do
      begin
      writeln('Introduza o ',i,' numero:');
      readln(num);
      clrscr;
      soma := soma + num;
      end;
           if soma mod 2 = 0
      then
           control := 'par'
      else
           control := 'impar';


      writeln('A soma � ',soma,' e � ',control,'.');
      writeln('Prima qualquer tecla para sair');
      readkey;

  End. 