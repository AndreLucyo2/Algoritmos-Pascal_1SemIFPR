program  media_notas;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas �teis

Var NOME:string; 
var N1,N2,N3,MEDIA:real;
var CONT:integer;

begin

   //clrscr;

   FOR CONT:=1 to 10 do

    begin

      write('Digite o nome e as 3 notas do ',cont,'o  aluno ');

      readln(NOME,N1,N2,N3);

      while(N1<0) or (n1>10) or (N2<0) or (N2>10) or (N3<0) or (N3>10) do

    begin {repete enquanto as notas forem menores que 0 ou maiores que 10!}

      writeln('Notas inv�lidas! Digite notas de 0 a 10!');

      readln(N1,N2,N3);

    end;

      MEDIA:=(N1+N2+N3)/3;

      writeln('A m�dia do aluno ',NOME,' �: ',MEDIA:2:2);

    end;

   readkey;

end.