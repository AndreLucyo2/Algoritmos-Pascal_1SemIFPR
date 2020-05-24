{Construa um programa que leia uma data qualquer (dia, mês e ano) e calcule a
 data do próximo dia. Lembre-se que em anos bissextos o mês de fevereiro tem 29
 dias. Lembre-se que um ano é bissexto quando for divisível por 4, com exceção
 dos anos centenários, que são divisíveis por 100, como  1700, 1800, etc.     
 MODIFICAÇÃO: após finalizar esse programa, modifique-o para validar a data
              fornecida pelo usuário. Caso a data não seja válida, emita uma
              mensagem de erro e encerre o programa.
 }


program diaAnterior;
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
      idProxDia  : integer;
      idProxMes  : integer;
      idProxAno  : integer;
      
begin

      // Entrada de dados     

      writeln('Entre com o ano');
      readln(idAno);

      ehBissexto=:false;
      if ((idAno mod 4) = 0) and ((idAno mod 100) <> 0)then         
            ehBissexto := true;        

      writeln('Entre com o mes');
      readln(idMes);

      if  ehBissexto = true and (idMes=2) then 
            begin
               writeln('Entre com o dia entre 1 e 28');
               readln(idDia);
            end;
      else if ehBissexto = false and (idMes=2)
            begin
               writeln('Entre com o dia entre 1 e 29');
               readln(idDia);
            end;
      else
            begin
            writeln('Entre com o dia');
            readln(idDia); 
            end;      

      //Processamento
      if (idMes = 12) and (idDia=31) then
         begin
         // Nessa situacao, vira o ano
         idProxAno := idAno + 1;
         idProxMes := 1;
         idProxDia := 1;
         end
      else      
         begin
            idProxAno := idAno; // exceto por 31/12, a proxima data sempre será no mesmo ano informado pelo usuario
            case idMes of
               1, 3, 5, 7, 8, 10, 12:begin // meses que têm 31 dias                  
                                       if (idDia=31) then 
                                             begin                                         
                                                idProxMes := idMes+1;
                                                idProxDia := idDia+1;
                                             end
                                       else
                                             begin
                                                idProxMes := idMes;
                                                idProxDia := idDia+1; 
                                             end;
                                     end;
               2:begin //fevereiro pode ter 28 ou 29 dias, dependendo se o ano eh bissexto.
                    if ehBissexto =true then 
                        begin
                           if (idDia=28) then 
                                    begin                                         
                                       idProxMes := 3;
                                       idProxDia := 1;
                                    end
                              else
                                    begin
                                       idProxMes := idMes;
                                       idProxDia := idDia+1; 
                                    end;
                        end;
                        
                     else
                           begin
                              if (idDia=29) then 
                                    begin                                         
                                       idProxMes := 3;
                                       idProxDia := 1;
                                    end
                              else
                                    begin
                                       idProxMes := idMes;
                                       idProxDia := idDia+1; 
                                    end;
                           end;


                  end;
               4, 6, 9, 11: begin// meses que têm 30 dias
                 
                  end;

            end; // end do "case"

         end; // end do "else"

         // Saida de dados
      writeln('Voce forneceu a data: ', idDia, '/', idMes, '/', idAno);
      writeln('A proxima data eh: ', idProxDia, '/', idProxMes, '/', idProxAno);

      writeln('Tecle [ENTER] para encerrar...');
      readln;
end.
