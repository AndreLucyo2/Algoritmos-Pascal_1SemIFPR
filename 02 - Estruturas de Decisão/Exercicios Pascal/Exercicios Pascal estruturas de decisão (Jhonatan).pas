Exercicio 1

program SomaABC;
Uses Crt,sysutils, math;
var
    NumA, NumB, NumC, Soma: integer;
begin
  writeln ('Entre com o primeiro numero inteiro');
  readln(NumA);
  writeln ('Entre com o segundo numero inteiro');
  readln(NumB);
  writeln ('Entre com o terceiro numero inteiro');
  readln(NumC);
  Soma := NumA+NumB;
    if (Soma<NumC) then
        writeln ('A soma do numero ', NumA, ' + ', NumB, ' é menor que ', NumC)
    else
        writeln ('A soma do numero ', NumA, ' + ', NumB, ' é maior que ', NumC);
readkey;
end.

Exercicio 2

program casada;
Uses Crt,sysutils, math;
var
    Nome, sexo, estadocivil: string;
begin
  writeln ('Entre com o seu nome');
  readln(Nome);
  writeln ('Você é F ou M');
  readln(sexo);
  writeln ('Qual seu estado civil Solteira, Casada, ou Outro?');
  readln(estadocivil);
    if ((sexo='f') or (sexo='F') and (estadocivil='Casada') or (estadocivil='casada')) then
    begin
        writeln ('Há quanto tempo está casada?')
    end
    else
        if ((sexo='f') or (sexo='F')) then
        writeln ('Este programa só conversa com as mulheres casadas')
        else
            if ((sexo='m') or (sexo='M')) then
        writeln ('Este programa não conversa com Homens')
            else
            writeln ('Invalido');
readkey;
end.