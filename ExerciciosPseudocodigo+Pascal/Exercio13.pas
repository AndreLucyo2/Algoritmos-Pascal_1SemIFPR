{
	Ler um número inteiro (assuma até três dígitos)
	e imprimir a saída da seguinte forma:
	CENTENA = x
	DEZENA = x
	UNIDADE = x
			
		123
		Centenas :   1
		Dezenas  :   2
		Unidade  :   3
	------------------------------------------------------------------
}

program Exercicio13;
//{$codepage UTF8}      // prepara a aplicação para escrever caracteres acentuados
   uses crt, sysutils;  // bibliotecas úteis

//--------------------------------------------------------------------
//*                    Declare variaveis:
//--------------------------------------------------------------------

	var numero : Integer;
	var centenas : Real;
	var dezenas : Real;
	var unidades : Real;    
	var modCentena: Integer;
	var modDezena : Integer;

//--------------------------------------------------------------------
//*                    Inicio do programa
//--------------------------------------------------------------------

begin

  writeln('Informe um numero inteiro:');
	readln(numero);

  modCentena := (numero)Mod(100);
	
	modDezena := (numero)Mod(100)Mod(10);	

	centenas := (numero - modCentena) / 100;

	dezenas := (modCentena - modDezena) / 10;

	unidades := (modCentena)mod(10);


  writeln('Centenas : ', centenas:3:0);
	writeln('Dezenas  : ', dezenas:3:0);
	writeln('Unidade  : ', unidades:3:0);

  readkey;

end.