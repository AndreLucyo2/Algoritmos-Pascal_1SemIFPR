Exercicio 1

program Media;
Uses Crt,sysutils, math;
var
    Nota1, Nota2, Notafinal    : real;
begin
  writeln ('Digite a primeira nota do aluno');
  readln(Nota1);
  writeln ('Digite a segunda nota do aluno');
  readln(Nota2);
  writeln ('Digite a terceira nota do aluno');
  Notafinal := (Nota1+Nota2)/2;
  If (Notafinal >= 7) then
  writeln ('A media final foi: ' , Notafinal:0:2 , ' situação: APROVADO')
  else
  writeln ('A media final foi: ' , Notafinal:0:2 , ' situação: REPROVADO');
readkey;
end.


Exercicio 2

program MaiorIdade;
Uses Crt,sysutils, math;
var
    Idade    : real;
begin
  writeln ('Digite a idade');
  readln(Idade);
    If (Idade >= 18) then
  writeln ('MAIOR DE IDADE')
    else
  writeln ('MENOR DE IDADE');
readkey;
end.

Exercicio 3

program Numeros;
Uses Crt,sysutils, math;
var
    Num1, Num2, Num3    : integer;
begin
  writeln ('Digite o primeiro numero');
  readln(Num1);
  writeln ('Digite o segundo numero');
  readln(Num2);
  writeln ('Digite o terceiro numero');
  readln(Num3);
     If (Num1>Num2) and (Num1>Num3) then
        writeln ('O maior numero é: ' , Num1)
    else if (Num2>Num1) and (Num2>Num3) then
        writeln ('O maior numero é: ' , Num2)
    else
        writeln ('O maior numero é: ' , Num3);
readkey;
end.

Exercicio 4

program Salario;
Uses Crt,sysutils, math;
var
    Sal, TempS, Bonus1, bonus2    : real;
const
    Bvinte = 1.2;
    Bdez = 1.1;
begin
  writeln ('Digite o valor do salario');
  readln(Sal);
  writeln ('Digite o tempo de serviço');
  readln(TempS);
    Bonus1 := (Sal*Bvinte);
    bonus2 := (sal*Bdez);
       If (TempS>=5) then
        writeln ('O valor do salario é: ' , Bonus1:0:0)
      else
        writeln ('O valor do salario é: ' , Bonus2:0:0);
readkey;
end.

Exercicio 5

program Emprestimo;
Uses Crt,sysutils, math;
var
    Vlemprestimo, NumParcelas, SalarioS, VlParcelas, temp   : real;
begin
  writeln ('Digite o valor do Emprestimo');
  readln(Vlemprestimo);
  writeln ('Digite o numero de Parcelas');
  readln(NumParcelas);
  writeln ('Digite o salario do solicitante');
  readln(SalarioS);
  VlParcelas := Vlemprestimo/NumParcelas;
  temp := SalarioS*0.30;
    If (VlParcelas>=temp) then
        writeln ('EMPRESTIMO NÂO APROVADO')
      else
        writeln ('EMPRESTIMO APROVADO');
readkey;
end.

Exercicio 6

program codprod;
Uses Crt,sysutils, math;
var
    codigo   : integer;
begin
  writeln ('Entre com o codigo do produto');
  readln(codigo);
  
    If (codigo=1) then
        writeln ('1 - Alimento não perecível')
    else
    
    if ((codigo=2) or (codigo=3) or (codigo=4)) then
        writeln ('2, 3, 4 - Alimento perecível')
    else
    
    if ((codigo=5) or (codigo=6)) then
        writeln ('5,6 - Vestuário')
    else
    
    if (codigo=7) then
        writeln ('7 - Higiene Pessoal')
    else
    
    if ((codigo=8) or (codigo=9) or (codigo=10)) then
        writeln ('8, 9 10 - Utensilios Domesticos')
    else
    
    if (codigo>10) or (codigo<1) then
        writeln ('Invalido');
readkey;
end.

Exercicio 7

program codprod;
Uses Crt,sysutils, math;
var
    codigo   : integer;
begin
  writeln ('Entre com o codigo do produto');
  readln(codigo);
    case codigo of
    1: writeln ('Alimento não perecível');
    2, 3, 4: writeln ('Alimento perecível');
    5, 6: writeln ('Vestuário');
    7: writeln ('Higiene Pessoal');
    8, 9, 10: writeln ('Utensilios Domesticos');
    else writeln ('Invalido');
    end;

program codprod;
Uses Crt,sysutils, math;
var
    codigo   : real;
begin
  writeln ('Entre com o codigo do produto');
  readln(codigo);
    case codigo of
    1: writeln ('Alimento não perecível');
    2, 3, 4: writeln ('Alimento perecível');
    5, 6: writeln ('Vestuário');
    7: writeln ('Higiene Pessoal');
    8, 9, 10: writeln ('Utensilios Domesticos');
   else writeln ('Invalido');
    end;
readkey;
end.

Exercicio 8

program Imparpar;
Uses Crt,sysutils, math;
var
    Numentrada  : integer;
    
begin
  writeln ('Entre com um numero');
  readln(Numentrada);
    if (Numentrada mod 2=0) then
    writeln ('Numero par')
    else
    writeln ('Numero impar');
readkey;
end.

Exercicio 9

program ComissaoFunc;
Uses Crt,sysutils, math;
var
    Totvenda  : real;
    Comiss    : real;        
Const
    Salario = 1200;
    Comissao = 0.10;
begin
  writeln ('Entre com o valor total vendido no mês');
  readln(Totvenda);
  Comiss := 1200+(Totvenda*Comissao);
    if (Totvenda > 2000) then
    writeln ('O valor total a pagar com comissão é de R$', Comiss:0:2)
    else
    writeln ('O funcionario não tem comissão a receber, ele receberá R$', Salario);
readkey;
end.

Exercicio 10

program Triangulo;
Uses Crt,sysutils, math;
var
    Lad1, Lad2, Lad3  : integer;
begin
  writeln ('Entre com o valor do lado 1');
  readln(Lad1);
  writeln ('Entre com o valor do lado 2');
  readln(Lad2);
  writeln ('Entre com o valor do lado 3');
  readln(Lad3);
If ((Lad1=Lad2) and (Lad2=Lad3) and (Lad1=Lad3)) then
        writeln ('O triangulo é: Equilatero')
    else
    if ((Lad1=Lad2) or (Lad1=Lad3) or (Lad2=Lad3)) then
        writeln ('O triangulo é: Isoceles')
    else
        writeln ('O triangulo é: Escaleno');
readkey;
end.

Exercicio 11

program Planosaude;
Uses Crt,sysutils, math;
var
    Idade  : integer;
begin
  writeln ('Entre com a idade');
  readln(Idade);
  If (Idade<10) then
        writeln ('A mensalidade é de R$30,00')
    else
    if ((Idade >=10) and (Idade<29)) then
        writeln ('A mensalidade é de R$60,00')
    else
    If ((Idade>=29) and (Idade<45)) then
        writeln ('A mensalidade é de R$120,00')
    else
    If ((Idade>=29) and (Idade<59)) then
        writeln ('A mensalidade é de R$150,00')
    else
        writeln ('A mensalidade é de R$300,00');
readkey;
end.

Exercicio 12

program Pesoideal;
Uses Crt,sysutils, math;
var
    Altura  : real;
    Sexo    : string;
    Peso    : real;
begin
  writeln ('Entre com a altura da pessoa em metros');
  readln(Altura);
  writeln ('F ou M');
  readln(Sexo);
    If (Sexo='M') then
        begin
        Peso := (72.7 * Altura)-58;
        writeln ('O peso ideal dele é: ', Peso:0:2)
        end
    else
        If (Sexo='f') then
            begin
            Peso := (62.1*Altura)-44.7;
            writeln ('O peso ideal dela é: ', Peso:0:2)
        end
        else
    writeln ('Invalido');
readkey;
end.

Exercicio 13

program Estacionamento;
{codepage utf8}
Uses Crt,sysutils, math;

var
    Hentrada, Mentrada, Hsaida, Msaida : integer;
    temp1, temp2, temp3, total     :real;

begin
  writeln ('Entre com a hora da entrada');
  readln(Hentrada);

  writeln ('Entre com os minutos da entrada');
  readln(Mentrada);

  writeln ('Entre com a hora da saida');
  readln(Hsaida);

  writeln ('Entre com os minutos da saida');
  readln(Msaida);

  temp1 := (Mentrada/60)+Hentrada;
  temp2 := (Msaida/60)+Hsaida;
  temp3 := ceil (temp2-temp1);

    if (temp3=1) then
    writeln ('O total a pagar é R$4,00')
    else
 
	if (temp3=2) then
        writeln ('O total a pagar é R$6,00')
    else
    
	if (temp3>2) then
            begin
            total := 6.00+temp3-2;
            writeln ('O valor a pagar é de R$', total:0:0);
            end
    else
	
readkey;
end.

Exercicio 14

program GastoGas;
Uses Crt,sysutils, math;
var
    TipoCar : string;
    CapTanque : integer;
    Gasto   :real;
Const
    Gasolina = 1.80;
    Alcool = 1.00;
begin
  writeln ('Entre com ao tipo do carro A (alcool) ou G (gasolina)');
  readln(TipoCar);
  writeln ('Entre com com a capacidade do tanque em L');
  readln(CapTanque);
    if ((TipoCar='A') or (TipoCar='a')) then
        begin
        Gasto := CapTanque*Alcool;
        writeln ('Você irá gastar R$', Gasto:0:2, ' para encher o tanque')
        end
    else
        if ((TipoCar='G') or (TipoCar='g')) then
        begin
        Gasto := CapTanque*Gasolina;
        writeln ('Você irá gastar R$', Gasto:0:2, ' para encher o tanque')
        end
        else
        writeln ('Invalido');
readkey;
end.