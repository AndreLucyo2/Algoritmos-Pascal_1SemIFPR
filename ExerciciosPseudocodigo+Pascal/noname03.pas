program exercicio03;
//{$codepage UTF8}      // prepara a aplica��o para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas �teis

  var dias : real;
	var meses : real;
	var ano : real;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

  writeln('Informe o numero de dias sem acidente: ');
	readln(dias);

  	meses := dias/30;

	  ano := meses/12;  //Considereando ano com 360 dias

		//ano := dias/360;


	writeln('Estamos a ',dias:0:2, ' dias sem acidentes, representa ',meses:0:2,' meses, e ', ano:0:3,' anos.');

  readkey;

end.