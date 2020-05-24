program misturaCores;
uses crt, sysutils;
Var
   temAmarelo, temAzul, temVermelho: Boolean;
	 vlOpcao      : string;
Begin
writeln('Voce está usando AMARELO(s/n)?');
readln(vlOpcao);
temAmarelo := (lowerCase(vlOpcao) = 's');

writeln('Voce está usando AZUL(s/n)?');
readln(vlOpcao);
temAzul := (lowerCase(vlOpcao) = 's');

writeln('Voce está usando VERMELHO(s/n)?');
readln(vlOpcao);
temVermelho := (lowerCase(vlOpcao) = 's');

if (temVermelho and temAzul and temAmarelo) Then
//if (temVermelho=true) and (temAzul=true) and (temAmarelo=true) Then
      writeln('VOCE NAO PODE FORNECER TRES CORES!')
else if (temVermelho and temAzul) then
      writeln('ROXO')
else if (temVermelho and temAmarelo) then
      writeln('LARANJA')
else if (temAzul and temAmarelo) then
      writeln('VERDE');

writeln('Pressione [ENTER] para encerrar...');
readln;
end.
