program calculoDeAreaDeRetangulo;
//{$codepage UTF8}      // prepara a aplicação para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas úteis

//--------------------------------------------------------------------
//*                    Declare variaveis:
//--------------------------------------------------------------------

var //Declaração de variáveis
      vAltura, vLargura : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

    writeln('Digite a altura: ');
    readln(vAltura);

		writeln('Digite a largura: ');
    readln(vLargura);

   writeln ('A area resultante é: ', vAltura * vLargura);

   readkey;

end.