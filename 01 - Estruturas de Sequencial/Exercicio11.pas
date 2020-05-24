program exerc11;
var
  qtDiasSA    : integer;
  qtMesesSA   : real;
  qtAnosSA    : real;
begin
	writeln('Entre com o tempo em dias');
	readln(qtDiasSA);
	
	qtMesesSA := qtDiasSA/30;
	qtAnosSA  := qtDiasSA/360;
	
	writeln(qtDiasSA, ' dias sem acidente equivalem a ',
	        qtMesesSA:0:2, ' meses ou ',
	        qtAnosSA:0:2, ' anos.');
	
	writeln('Tecle ENTER para encerrar ...');
	readln;

end.
