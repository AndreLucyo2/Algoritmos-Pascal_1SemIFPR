{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Escreva um programa que aceite até 20 Strings (ou menos, se o usuário digitar
 um valor de sentinela definido previamente). Armazene cada String em um de dois
 vetores - um para as strings que contenham menos de 10 caracteres (aqui
 chamadas de "palavras curtas") e outro para strings com 10 caracteres ou mais
 ("palavras longas").
 Após a entrada de dados, solicite ao usuário que digite um tipo de String a ser
 exibido ("curta" ou "longa") e imprima o vetor apropriado.
 Assuma que se o usuário não selecionar "palavras curtas", ele está interessado
 em exibir a lista de "palavars longas". Se o vetor que ele solicitar não tiver
 nenhuma string armazenada, escreva uma mensagem indicando isso.

 Faça com que o usuário possa informar se deseja repetir a execução do programa.
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program listaDeStrings;
uses sysUtils;

const
  tamVetor       = 20; // tamanho do vetor fornecido pelo usuario
  strSentinela   = 'ok'; // valor de sentinela, para interromper a entrada de dados do usuario
type
  tpVetorStr     = array [1..tamVetor] of string; // define "tpVetorStr" como um array de strings com "tamVetor" posicoes
var
  dsPalavra       : string; // opcao do usuario
  vlOpcao         : char;
  vetPalavrasC    : tpVetorStr; // vetor para armazenar as "palavras curtas" fornecidas pelo usuario
  vetPalavrasL    : tpVetorStr; // vetor para armazenar as "palavras longas" fornecidas pelo usuario
  nrLetras        : integer; // numero de caracteres (letras) da palavra fornecida pelo usuario
  contPalavras    : integer; // variavel contadora
  contPalavrasC   : integer; // variavel contadora (numero de palavras curtas)
  contPalavrasL   : integer; // variavel contadora  (numero de palavras longas)
  cont            : integer;
  vazio           : boolean;

{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin
  // complete o código abaixo apropriadamente para resolver o problema
  writeln('Programa de Listas de Palavras');
  contPalavras    := 0; // quantidade de palavras que o usuario digitou
  contPalavrasC   := 0; // quantidade de palavras CURTAS que o usuario digitou
  contPalavrasL   := 0; // quantidade de palavras LONGAS que o usuario digitou
  cont            :=1;  //Contador
  vazio           :=true; //Validar se o vet esta vazio

  writeln('Parte 1 - Entrada de dados...');

  repeat  // repita até que o usuário digite o valor de sentinela ou tenha informado "tamVetor" palavras
    
    writeln('Informe uma palavra');
    readln(dsPalavra);
    writeln;

    if (dsPalavra <> strSentinela)then // se for para armazenar a palavra informada...
       begin
        
        contPalavras := contPalavras + 1;
        nrLetras := length(dsPalavra); // armazena o numero de caracteres da palavra em "nrLetras"
        { se a palavra contiver menos de 10 caracteres, sera armazenada em
        "vetPalavrasC"; caso contrario, ser armazenada em "vetPalavrasL"}

        if nrLetras < 10 then
          begin
            vetPalavrasC[contPalavras]:=dsPalavra;//Palavras Curtas
          end
        else
          begin
            vetPalavrasL[contPalavras]:=dsPalavra;//Palavras Longas
          end;

       end;

  until ((dsPalavra = strSentinela) or (contPalavras = tamVetor));


  writeln('Parte 2 - Saida de dados...');
  writeln('Voce quer visualizar a lista de palavras [C]urtas ou [L]ongas?');
  readln(vlOpcao);

  if (uppercase(vlOpcao) = 'C') then // se o usuario selecionou visualizar as palavras curtas...
    begin
      writeln('Mostrando lista de palavrass Curtas:');
      for cont := 1 to contPalavras do
        begin 
          if (vetPalavrasC[cont] <> '') or (vetPalavrasC[cont] <> null) then
            begin
              writeln('   ',vetPalavrasC[cont]);
              vazio := false;
            end
          else
            begin
              vazio := true;
            end;       
        end;
        
    end
  else // se o usuario selecionou visualizar as palavras longas...
    begin
      writeln('Mostrando lista de palavrass CLongas:');
      for cont := 1 to contPalavras do
        begin      
          if (vetPalavrasC[cont] <> '') or (vetPalavrasC[cont] <> null) then
              begin
                writeln('   ',vetPalavrasL[cont]);
                vazio := false;
              end
            else
              begin
                vazio := true;
              end;
        end;
  end;

    //Alerta que o vetor escolhido esta vazio:
    if vazio then
      begin
        writeln;
        writeln('o Vetor esta vazio.'); 
        writeln;
      end;

    writeln('Pressione [ENTER] para encerrar o programa...');
    readln;
end.