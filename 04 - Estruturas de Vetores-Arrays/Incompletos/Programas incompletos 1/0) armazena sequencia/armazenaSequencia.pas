{
Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Crie um programa que armazene num vetor oito números inteiros, fornecidos pelo
 usuario. O programa deve exibir um menu com 5 opcoes para o usuario escolher,
 conforme abaixo:
      (1) exibir todos os números;
      (2) exibir todos os números na ordem inversa;
      (3) exibir a soma dos números;
      (4) exibir todos os valores menores que um outro número, fornecido pelo
          usuario. Informe também quantos números são menores e quantos sao
          maiores do que esse valor;
      (5) exibir todos os valores maiores que a média dos valores fornecidos.
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program armazenaSequencia;
uses crt, sysUtils;

const
  tamVetor       = 8; // tamanho do vetor fornecido pelo usuario
  vetOpcoes      : array [1..5] of string = ('(1) Exibir os numeros',
                                             '(2) exibir todos os numeros na ordem inversa',
                                             '(3) exibir a soma dos numeros',
                                             '(4) exibir todos os valores menores que um numero fornecido por voce',
                                             '(5) exibir todos os valores maiores que a sua media');

type //Definir um tipo de variavel ja pre-definido
  tpVetor         = array [1..tamVetor] of integer; // define "tpVetor" como um array com "tamVetor" posicoes

var
  vlOpcao         : integer; // opcao do usuario
  vetValores      : tpVetor; // vetor para armazenar os numeros fornecidos pelo usuario
  cont            : integer; // variavel contadora
  total           : integer; // variavel soma dos numeros
  numInformado    : integer; // variavel numero informado
  media           : real;
  opcInvalida     : boolean; // Valida se informado opção inválida    

{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }

begin

  

  // complete o código abaixo apropriadamente para resolver o problema
  writeln('Programa de Sequencias Numericas');
  writeln('Primeiramente informe ', tamVetor,' valores');
  for cont := 1 to tamVetor do
    begin
      writeln('Informe o valor ', cont, ' de ', tamVetor, ':');
      readln(vetValores[cont]);
    end;


  writeln('Essas sao as suas opcoes');
  writeln('');
  for cont := 1 to 5 do
    begin
      writeln('  ',vetOpcoes[cont]);     
    end;


  //===========================================================================================
  //VALIDAR OPÇÃO INFORMADA
  //===========================================================================================
    opcInvalida := true;
    repeat 
      writeln('');
      writeln('Qual a sua opcao (de 1 a 5)?');
      readln(vlOpcao);  

      writeln('----------------------------------------------------');

      //Valida se informado opção válida:
      if (vlOpcao >=1) and (vlOpcao <=5) then
        begin
          opcInvalida:= false;
        end
      else
        begin
          writeln('Voce forneceu uma opcao invalida (', vlOpcao, ')!');
          writeln('Por favor escolha novamente!');
        end;

    until (opcInvalida = false);
  //-------------------------------------------------------------------------------------------

  case vlOpcao of
    1: //Opcao (1): exibir todos os números
      begin
        writeln('Voce escolheu a opcao (1): exibir todos os números');
        for cont := 1 to tamVetor do
          begin
            writeln('   Valor ',cont,' = ',vetValores[cont]);     
          end;
      end;

    2: //Opcao (2): exibir todos os números na ordem inversa
      begin
        writeln('Voce escolheu a opcao opcao (2): exibir todos os números na ordem inversa');
        for cont := tamVetor downto 1 do
          begin
            writeln('   Valor ',cont,' = ',vetValores[cont]);     
          end;
      end;

    3: //Opcao (3): exibir a soma dos números
      begin
      writeln('Voce escolheu a opcao (3): exibir a soma dos números');
        for cont := 1 to tamVetor do
          begin
            total := total + vetValores[cont];                
          end;
          writeln('   Soma dos ',cont,' = ',total);
      end;

    4: //Opcao (4): exibir todos os valores menores que um número fornecido pelo usuario
      begin
        writeln('Voce escolheu a opcao (4): exibir todos os valores menores que um número fornecido por voce');
        writeln('');
        writeln('Informe o numero?');
        readln(numInformado); 

        writeln('==========  LISTA DOS NUMEROS MENORES QUE ',numInformado,' ============');

        for cont := 1 to tamVetor do
            begin
              if vetValores[cont] < numInformado then
                begin
                  writeln('   Valor ',cont,' = ',vetValores[cont]);  
                end;               
            end; 

        writeln('========================================================================');
      end;

    5: //Opcao (5) exibir todos os valores maiores que a média dos valores fornecidos.
      begin
        writeln('Voce escolheu a opcao (5) exibir todos os valores maiores que a média dos valores fornecidos');
        for cont := 1 to tamVetor do
        begin
          total := total + vetValores[cont];              
        end; 
        media := total/cont;

        writeln(' Qtd de numeros fornecidos    :',cont); 
        writeln(' Soma dos numeros fornecidos  :',total); 
        writeln(' Média dos numeros fornecidos :',media:0:2);

        for cont := 1 to tamVetor do
            begin
              if vetValores[cont] > media then
                begin
                  writeln('   Valor Maior que a media   = ',vetValores[cont]);  
                end;               
            end; 

      end;

    else
      writeln('Voce forneceu uma opcao invalida (', vlOpcao, ')!');
    end; // end do case

  writeln('');
  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;
end.