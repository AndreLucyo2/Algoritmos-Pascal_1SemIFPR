program resto;
uses crt;
var
 a,b,c:Real;
begin
  clrscr;
  writeln('Digite 2 n�meros inteiros');
  readln(a,b);
  c:=(a)mod(b);
  writeln('O resto da divis�o do n�mero ',a,' pelo n�mero ',b,' � ',c);
  readkey;
end.