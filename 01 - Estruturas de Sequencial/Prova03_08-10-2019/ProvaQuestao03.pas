program Questao02;   
   uses crt;

	var
	horasEnt  : integer;
  semana    : integer;
  dias      : integer;
  horas     : integer;
  aux       : integer;

begin
	writeln('Entre com o tempo em horas');
	readln(horasEnt);

	semana  := trunc(horasEnt / 168); //uma semana possui 168horas

	aux := horasEnt mod 168; //Variavel auxiliar.

	dias := trunc(aux / 24);

	horas  := aux mod 24;

	writeln(horasEnt, ' horas iformado ',
	        semana,  ' semana, ',
	        dias, ' dias e ',
	        horas,  ' horas.');

	writeln('Tecle ENTER para encerrar ...');
	readln;
end.