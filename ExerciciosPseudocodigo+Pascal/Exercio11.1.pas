program exercicio11;
   //{$codepage UTF8}      // prepara a aplicação para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas úteis

var
  qtDiasSAEnt : integer; // Qtde. de dias de entrada, fornecido pelo usuario
  qtAnosSA    : integer; // Qtde. de anos
  qtMesesSA   : integer; // Qtde. de meses
  qtDiasSA    : integer; // Qtde. de dias apos os calculos
  aux         : integer; // variavel temporaria
	
begin
	writeln('Entre com o tempo em dias');
	readln(qtDiasSAEnt);
	
	qtAnosSA  := trunc(qtDiasSAEnt / 360); //um ano tem 360 dias
	
	aux := qtDiasSAEnt mod 360; //Variavel auxiliar.
	
	qtMesesSA := trunc(aux / 30);
	
	qtDiasSA  := aux mod 30;
	
	writeln(qtDiasSAEnt, ' dias sem acidente ã equivalem a ',
	        qtAnosSA,  ' anos, ',
	        qtMesesSA, ' meses e ',
	        qtDiasSA,  ' dias.');
					
	writeln('Tecle ENTER para encerrar ...');
	readln;
end.