
program exercicio23;
//{$codepage UTF8}      // prepara a aplica��o para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas �teis

	var alturaPessoa : real;
	var alturaPredio : real;

	var sombraPessoa : real;
	var sobraPredio : real;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

  writeln('Informe a altura d pessoa :');
	readln(alturaPessoa);

  writeln('Informe a medida de sua sombra :');
	readln(sombraPessoa);

	writeln('Informe a medida da sombra do predio:');
	readln(sobraPredio);

	alturaPredio := (alturaPessoa*sobraPredio)/sombraPessoa;


	writeln('A altura do predio � de : ', alturaPredio :3:2,' com base nas sombras informada:');

  readkey;

end.