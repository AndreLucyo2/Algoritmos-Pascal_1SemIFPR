program calculoDeAreaDeRetangulo;
//{$codepage UTF8}      // prepara a aplica��o para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas �teis

//--------------------------------------------------------------------
//*                    Declare variaveis:
//--------------------------------------------------------------------

var //Declara��o de vari�veis
      vAltura, vLargura : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

    writeln('Digite a altura: ');
    readln(vAltura);

		writeln('Digite a largura: ');
    readln(vLargura);

   writeln ('A area resultante �: ', vAltura * vLargura);

   readkey;

end.