program questao1;
uses crt;
var
numero : Integer;


begin
  
  writeln('Digite um numero de 1 a 12');
  
  readln(numero);
  
  case numero of
    1: writeln ('Janeiro');
    2: writeln ('fevereiro');
    3: writeln ('março');
    4: writeln ('abril');
    5: writeln ('maio');
    6: writeln ('junho');
    7: writeln ('julho');
    8: writeln ('agosto');
    9: writeln ('setembro');
    10: writeln ('outubro');
    11: writeln ('novembro');
    12: writeln ('dezembro');
    
    else writeln ('numero inválido');
  end;
  
  readkey;
  
end.
