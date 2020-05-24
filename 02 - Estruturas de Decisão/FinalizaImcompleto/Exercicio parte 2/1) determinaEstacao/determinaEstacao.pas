{
*******************************************************************************
*  baseado na avaliação parcial do curso técnico em informática integrado ao  *
*  ensino médio sobre estruturas sequenciais.                                 *
*******************************************************************************
===============================================================================
questão 3 - Crie um algoritmo que a partir do valor do dia e do mês de uma data informada
            pelo usuário, informe qual é a estação do ano, conforme a tabela a seguir.
						Considere que o mês será fornecido como um número (isto é,
                              1 para janeiro, 2 para fevereiro, etc).
						Outono: Entre 20 de março(3) e 20 de junho(6)
						Inverno: Entre 21 de junho(6) e 21 de setembro(9)
						Primavera: Entre 22 de setembro(9) e 20 de dezembro(12)
						Verão: Entre 21 de dezembro(12) e 19 de março(3)
}

Program determinaEstacao;

		Var
		  idMes : Integer;
		  idDia : Integer;
		  nmEstacao : String;
			
Begin

    Writeln('Entre com o mes (de 1 a 12):');
    Readln(idMes);

    //Valida o mes para perguntar os dias:
    If (idMes = 3) or (idMes = 6) or (idMes = 9) or (idMes = 12) Then
      Begin
        Writeln('Entre com o dia:');
        Readln(idDia);
      End;

    case idMes of
      1,2 : begin
            nmEstacao := 'Verao'
          End;

      3 : begin        
          if (idDia > 19) then
              begin
                nmEstacao := 'Outono' 
              end
              
          else
              begin
                nmEstacao := 'Verao' 
              end

          End;

      4,5 : begin
            nmEstacao := 'Outono'
          End;
          
      6 : begin        
          if (idDia < 19) then
              begin
                nmEstacao := 'Outono' 
              end
              
          else
              begin
                nmEstacao := 'Inverno' 
              end

          End; 

      7,8 : begin
            nmEstacao := 'Inverno'
          End;

      9 : begin        
          if (idDia < 22) then
              begin
                nmEstacao := 'Inverno' 
              end
              
          else
              begin
                nmEstacao := 'Primavera' 
              end

          End; 

      10,11 : begin
            nmEstacao := 'Primavera'
          End;    

      12 : begin          
          if (idDia > 20) then
            begin
              nmEstacao := 'Verao' 
            end
            
          else
            begin
              nmEstacao := 'Primavera' 
            end

      end;
    end;	  
    
				 
  //=============================================
    Writeln('Estamos na estacao: ', nmEstacao);
    Writeln('Digite [enter] para encerrar...');
    Readln;

End.