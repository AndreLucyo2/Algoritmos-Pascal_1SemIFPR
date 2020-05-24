
{Construa um programa que leia uma data qualquer (dia, mês e ano) e calcule a
 data do dia anterior. Lembre-se que em anos bissextos o mês de fevereiro tem 29
 dias. Lembre-se que um ano é bissexto quando for divisível por 4, com exceção
 dos anos centenários, que são divisíveis por 100, como  1700, 1800, etc.
 MODIFICAÇÃO: após finalizar esse programa, modifique-o para validar a data
              fornecida pelo usuário. Caso a data não seja válida, emita uma
              mensagem de erro e encerre o programa.
 }

//NOTA: este programa estah incompleto. Analize-o e finalize-o como apropriado!
program proximoDia;
   {$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas úteis
   var
   // Variaveis de entrada
   idDia      : integer; // dia do mes
   idMes      : integer; // mes do ano
   idAno      : integer; // ano, no formato AAAA
   // Variaveis auxiliares
   ehBissexto : boolean; // "true" caso idAno seja bissexto
   // Variaveis de saida
   idDiaAnt  : integer;
   idMesAnt  : integer;
   idAnoAnt  : integer;

begin
   // Entrada de dados
   writeln('Entre com o dia');
   readln(idDia);
   writeln('Entre com o mes');
   readln(idMes);
   writeln('Entre com o ano');
   readln(idAno);

   //1° Validação:
   if (idAno < 1) or (idAno > 12) then
      begin
         writeln('Data informada invalida');
         writeln('Sistema será encerrado!');
         exit;
      end;


   //Processamento
   if (idMes = 1) and (idDia=1) then
      begin
         // O dia anterior a 1° de janeiro
         idAnoAnt := idAno - 1;
         idMesAnt := 12;
         idDiaAnt := 31;
      end

   else
      begin
         idAnoAnt := idAno;
         idDiaAnt := idDia - 1;//Vai executar sempres
         
         if (idDiaAnt = 0) then
            // Nessa condicao, significa que a data anterior eh o último dia do mes anterior
            begin
               case idMes of //Mes anterior tem 31 dia
                  2,4,6,9,11: 
	               begin 
                     idMesAnt := idMes-1;
                     idDiaAnt := 31;
	               end;
										
                  5,7,8,10,12: //Mes anterior tem 30 dia
	               begin 
                     idMesAnt := idMes-1;
                     idDiaAnt := 30;
	               end;

                  3: 
                  begin
                     ehBissexto :=false;
                     if ((idAno mod 4) = 0) and ((idAno mod 100) <> 0) then         
                        ehBissexto := true; 

                     if ehBissexto = false then
                        begin

                           //3° Validação:
                           if (idAno < 1) or (idAno > 28) then
                              begin
                                 writeln('Data informada invalida');
                                 writeln('Sistema será encerrado!');
                                 exit;
                              end;

                           idMesAnt := 2;
                           idDiaAnt := 28;
                        end
                     else
                        begin
                           idMesAnt := 2;
                           idDiaAnt := 29;
                        end;  
                   
            end
            
         else
            begin
               idMesAnt := idMes;
               idDiaAnt := idDia-1;
            end;
         
		
      

      // Saida de dados
      writeln('Voce forneceu a data: ', idDia, '/', idMes, '/', idAno);
      writeln('A data anterior eh: ', idDiaAnt, '/', idMesAnt, '/', idAnoAnt);

      writeln('Tecle [ENTER] para encerrar...');
      readln;
end.