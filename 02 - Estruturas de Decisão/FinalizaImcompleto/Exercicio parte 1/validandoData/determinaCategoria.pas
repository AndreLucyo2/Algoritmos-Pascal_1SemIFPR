{
*******************************************************************************
*  Baseado na Avaliação parcial do curso Técnico em Informática Integrado ao  *
*  Ensino Médio sobre estruturas sequenciais.                                 *
*******************************************************************************
===============================================================================
Questão 2 - Validando uma data
            Escreva um algoritmo que permita ao usuário inserir os valores do
            dia, mês e ano de uma data qualquer e verifique se essa data é
            válida.
            Exemplo: um mês pode variar de 1 a 12 (de janeiro a dezembro) e cada
            mês pode ter 28, 29, 30 ou 31 dias. Logo “05/10/2019” é uma data
            válida, mas “31/11/2019” é inválida (novembro tem apenas 30 dias),
            assim como “32/14/2019” (não existe o mês 14 e nenhum mês tem 32 dias).
            Lembre: os meses que possuem 31 dias são janeiro, março, maio, julho,
                    agosto, outubro e dezembro (ou seja, os meses 1, 3, 5, 7, 8,
                    10 e 12); os que possuem 30 dias são abril, junho, setembro
                    e novembro (meses 4, 6, 9 e 11).
                    Considere que fevereiro (mês 2) como tendo sempre 28 dias.
}
program validandoData;
{NOTA: esse programa considera que fevereiro tem sempre 28 dias!}
uses crt, sysUtils;

var
  vlDia, vlMes, vlAno : integer; // valores do dia, mes e ano (fornecida pelo usuário)
  dsMensagem          : string;  // Mensagem para informar se a data eh valida
	ehDataValida        :Boolean;  //Valida se a data esta valida
	
	 begin
			ehDataValida :=true;
		  dsMensagem := ''; // Inicializa a mensagem que sera exibida ao usuário com nulo
			writeln('Entre com o ano');
			readln(vlAno);
			writeln('Entre com o mes');
			readln(vlMes);
			writeln('Entre com o dia');
			readln(vldia);
			
		   if (vlMes > 12) or (vlMes < 1) then
		   			dsMensagem := concat('O mes informado (', intToStr(vlMes), ') nao eh valido. ',
		                 'Insira um valor entre 1 e 12')
				else
				   begin
				     { testa o valor do dia de acordo com o mes. Em alguns meses, pode-se ter
				       ateh 31 dias, em outros 30 e fevereio, 28}
							 
				     case vlMes of
				      // complete o programa, modificando o codigo como necessário
				      1, 3, 5, 7, 8, 10, 12 : begin // meses com 31 dias
							
				                              end;
																			
				      4,6,9,12              : begin // fevereiro, nesse programa, tem *sempre* 28 dias
							
				                              end;
				   end // end do "case"
		   end // end do "else"

			 
  // continue o programa, inserindo seu código aqui 
	writeln (dsMensagem);
	writeln('Digite [Enter] para encerrar...');
	readln;

end.
