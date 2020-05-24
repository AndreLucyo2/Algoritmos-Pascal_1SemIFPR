Program Calcula_IMC;
Var
  pesoPessoa, alturaPessoa, valorIMC : Real;
  grauObesidade : String;
Begin
  Writeln('Entre com a altura da pessoa em metros');
  Readln(alturaPessoa);
  Writeln('Entre com o peso da pessoa em kilogramas');
  Readln(pesoPessoa);
  valorIMC := (pesoPessoa) / (alturaPessoa * alturaPessoa);
  Writeln('O IMC da pessoa é ', valorIMC);
  If (valorIMC < 18.5) Then
    grauObesidade := 'A pessoa está abaixo do peso'
  Else If (valorIMC < 25) Then
    grauObesidade := 'A pessoa está com peso normal'
  Else If (valorIMC < 30) Then
    grauObesidade := 'A pessoa está com sobrepeso'
  Else If (valorIMC < 35) Then
    grauObesidade := 'A pessoa está com obesidade grau 1'
  Else If (valorIMC < 40) Then
    grauObesidade := 'A pessoa está com obesidade grau 2'
  Else
    grauObesidade := 'A pessoa está com obesidade grau 3';
  Writeln('O diagnóstico da pessoa é: ' + grauObesidade);
End.
