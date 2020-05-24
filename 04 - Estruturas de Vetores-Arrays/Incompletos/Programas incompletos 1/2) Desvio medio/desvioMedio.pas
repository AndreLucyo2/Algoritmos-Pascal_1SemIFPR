{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Construa um programa que permita ao usuário inserir uma quantidade qualquer de
 valores reais (não mais de 15). O usuário deve informar um valor de guarda como
 99999 para encerrar a entrada de dados.
 Exiba uma mensagem de erro se o usuário sair sem inserir nenhum número; caso
 contrário, exiba cada valor e a distância dele até a média. Por exemplo, se o
 usuário fornecer os numeros 1, 2, 3 e 4 então a média será 2.5 e o computador
 terá que imprimir a seguinte saída:
 ===============================================================================
    Valores inseridos pelo usuario  :  1.0    2.0    3.0    4.0
    Media dos valor inseridos       :  2.5
    Distancia de cada valor a media : -1.5   -0.5    0.5    1.5
 ===============================================================================

 Ao final, pergunte ao usuário se ele deseja executar o programa novamente.
 NOTE: O programa vai pedindo para o usuario fornecer ATÉ 15 números. Se o
       computador ler o valor de guarda, encerra a entrada de dados!
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program desvioMedio;
  uses crt, sysUtils;

  const
    tamVetor  = 5; // tamanho do vetor
    sentinela = -1; // valor de sentinela, para interromper a entrada de dados do usuario
  type
    tpVetor  = array[1..tamVetor] of real;// "tpVetor" define um vetor de 15 valores reais
  var
    vlOpcao         : char;    // variavel auxiliar, utilizada para perguntar se o programa deve ser executado novamente

    //================================================================================================================================
    procedure fazCalculos;
      // essa procedure executa a solucao para o probelma proposto
      var
          idPare          : boolean; // variavel auxiliar
          contaPosicoes   : integer; // conta o numero de valores informado pelo usuario
          cont            : integer; // variavel contadora
          aux             : real;    // variavel auxiliar
          vetValores      : tpVetor; // vetor a ser preenchido com valores fornecidos pelo usuário
          vetDistancias   : tpVetor; // distancias dos valores de "vetValores" a media
          total           : real; // variavel soma dos numeros
          vlMedia         : real;    // media dos valores fornecidos pelo usuario
          
    begin
      
      contaPosicoes    := 0; // inicializa a variavel contadora
      vlMedia          := 0; // inicializa a media
      
      repeat // laço para preencher o vetor

        writeln('Digite um numero real. ou ',sentinela,' para encerrar a entrada de dados.');
        readln(aux);  
      
        if (aux <> sentinela) then
          begin            

            //Conta qtd. de numeros informado:
            contaPosicoes  := contaPosicoes + 1;

            //Preenche o vetor:
            vetValores[contaPosicoes] := aux;

           
            writeln('Voce informou até agora ', contaPosicoes, ' valores entre ', tamVetor, ' possiveis.');

            idPare := (contaPosicoes = tamVetor); // Se o numero de posições for atingido fica true

            //Obter o total para Média:
            total:= total + vetValores[contaPosicoes];   

          end         
        else
          begin
            idPare := true; // Se for digitado o sentinela fica true
          end;          

      until (idPare); // repete enquanto o valor de SENTINELA não for informado ou o numero de posicoes for igual ao tamanho do vetor

      //Calculo da Média:
      vlMedia := total/contaPosicoes;
      
      for cont := 1 to contaPosicoes do // calcula a distancia dos valores fornecidos a media
      begin
        vetDistancias[cont] := vetValores[cont] - vlMedia;
      end;
      
      writeln;// pula uma linha
      writeln('===============================================================');
      write('  Valores inseridos pelo usuario  : ');

      // Imprime os resultados (valores informados)
      for cont := 1 to contaPosicoes do
      begin 
        write(vetValores[cont]:0:2, '   ');
      end;
       
      writeln;// pula uma linha
      write('  Media dos valor inseridos       : ', vlMedia:0:2);

      writeln;// pula uma linha
      write('  Distancia de cada valor a media : ');

      // Imprime os resultados (distancias a media)
      for cont := 1 to contaPosicoes do
      begin 
        write(vetDistancias[cont]:0:2, '   ');
      end;

      writeln;// pula uma linha
      writeln('===============================================================');

      writeln;// pula uma linha

    end;


{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin

  repeat

    clrscr;//Limpa a tela para a proxima execução

    fazCalculos; // executa a procedure que resolve o problema proposto

    writeln('Deseja executar novamente ("S" para sim, qualquer outro valor para nao)?');
    readln(vlOpcao);

  until (upperCase(vlOpcao)<>'S'); // Executa o programa enquanto o usuário desejar

end.