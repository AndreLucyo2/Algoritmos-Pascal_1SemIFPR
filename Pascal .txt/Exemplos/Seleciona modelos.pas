Program modelos;
uses crt;
var cabelo, control :string;
   altura, peso : real;

 Begin
      writeln('*===============================*');
      writeln('|        Seleciona modelos      |');
      writeln('| Programado por F�bio Oliveira |');
      writeln('*===============================*');
      writeln('');
  writeln('Prima qualquer tecla para continuar...');
      readkey;
      clrscr;
      writeln('Insira cor do cabelo:');
      readln(cabelo);
      clrscr;
             writeln('Insira altura:');
             readln(altura);
      clrscr;
             writeln('Insira peso');
             readln(peso);
      clrscr;
      {TESTE LOGICO}
      if (cabelo = 'loiro') AND (altura >= 1.70) AND (peso <= 57)
          then control := 'selecionada'
          else control := 'n�o selecionada';
       {OUTPUT}
      writeln('Voc� foi ',control);
      writeln('Prima qualquer tecla para sair');
      readkey;

  End.