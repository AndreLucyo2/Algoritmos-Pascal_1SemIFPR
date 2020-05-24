program jokempo;
  {$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
  uses sysutils;
  { Esse programa implementa o jogo chamado "jokempô"
    Para fazer a sua jogada, o usuário deve utilizar as letras "R" ou "1" para
    representar "pedra", "P" ou "2" para "papel", e "T" ou "3" para "tesoura".
    NOTA: não é permitido mostrar "pedra" duas vezes seguidas!
  }


  var
    vlJogadaUsr        : char; //armazena a jogado do usuário.
    vlJogadaComp       : char; //armazena a jogado do computador.
	  jogadaAnteriorUsr  : Char; //guarda a jogada antrior do user
    jogadaAnteriorComp : Char; //guarda a jogada antrior do computador
    ehJogadaRepetida   : boolean; //Valida se é jogada repetida
    jogarNovamente     : char; //Valida se quer jogar novamente





  //===============================================================================
  //Função que retorna a jogada do computador, Funções retorna algum valor
  //===============================================================================
  function fncJogadaComp : char;
    // Esta função implementa a jogada do computador no Jokempô.
    // Para isso, retorna de forma aleatória os caracters "R", "P" ou "T".
    const
      // vetSimbolos eh um vetor com os símbolos do jogo
      vetSimbolos : array [1..3] of char = ('R', 'P', 'T');
     
    var
      aux   : integer;
      res   : char;

    begin
      aux := random(3)+1; // retorna um número aleatório entre 1 e 3
      res := vetSimbolos[aux]; // res armazena uma das letras do jogo("R", "P" ou "T")
      fncJogadaComp := res;
    end;






  //===============================================================================
  //Procedimento, mostra as opções de jogo, Procedimento nao retorna valor
  //===============================================================================
  procedure prcMostraMenu;
  // exibe o menu para o usuário saber quais sao as opcoes do jogo
  begin
    writeln;
    writeln('  ****************************************  ');
    writeln('  **  Bem vindo ao Jokempô eletrônico!  **  ');
    writeln('  ****************************************  ');
    writeln('  ** Escolha sua opcao conforme abaixo: **  ');
    writeln('  **    "R" ou "1" para "PEDRA";        **  ');
    writeln('  **    "P" ou "2" para "PAPEL";        **  ');
    writeln('  **    "T" ou "3" para "TESOURA".      **  ');
    writeln('  ****************************************  ');
    write  ('  Entre com a sua opção: ');
    
  end;





  //===============================================================================
  //Função que Retorna o texto da opção excolhida
  //===============================================================================
  function funcTxtEscolha(charJogada : char) : string;  
  begin

      if charJogada = 'R' then
        begin
          funcTxtEscolha := 'PEDRA';
        end
      else if charJogada = 'P' then
        begin
          funcTxtEscolha := 'PAPEL';
        end
      else if charJogada = 'T' then
        begin
          funcTxtEscolha := 'TESOURA';
        end
      else
        begin
          funcTxtEscolha := '---';  
        end;
  end; 







  //===============================================================================
  // Esta função le e valida a opção do usuário.
  //===============================================================================
  function fncLeJogadaUsuario: char;
  // Essa funcao le a opcao de jogada do usuario
  var
    aux      : char; // Opcao de jogada do usuario
    ehValida : boolean; // "true" se a jogada do usuario for valida REPETE!

  begin
    repeat
      prcMostraMenu;
      readln(aux);//lê a opção do user...
      writeln;

      //Valida caso entrada for numerica, 1, 2 ou 3:
      case aux of
        '1': aux:='R';
        '2': aux:='P';
        '3': aux:='T';
        else
        aux:='X';//Transforma em uma opção inválida
      end;

      aux      := upCase(aux); // Transforma para maiuscula
      ehValida := (aux = 'R') or (aux = 'P') or (aux = 'T') or
                  (aux = '1') or (aux = '2') or (aux = '3');

      //Não mostra jogada inválida!
      if aux <> 'X' then
      begin
        writeln('  Você jogou "',funcTxtEscolha(aux), '"');
      end;      

      if not ehValida then // se a jogada do usuario nao for valida...
          writeln('  Sua opção eh inválida. Joque novamente.')
      else
          writeln('  Sua opção eh válida.');

    until (ehValida);// se a opção for valida...

    //Definir o retorno da função:
    fncLeJogadaUsuario := aux; // retorna a jogada do usuario
  end;


  //===============================================================================
  //Função que Valida se é jogada repetida
  //===============================================================================
  function funcEhJogadaRepetida(jogAnterior : char; jogadaAtual:char):boolean;
  begin

    funcEhJogadaRepetida :=false;

    if jogAnterior = jogadaAtual then
      begin
        writeln('  Jogada nao pode ser repetida!');
        writeln('  Jogada anterior ',funcTxtEscolha(jogAnterior));
        writeln('  Tente outra jogada!');
        funcEhJogadaRepetida := true;
      end;

  end; 

 
  





//===============================================================================
// Programa principal
//===============================================================================
begin

  randomize; // Inicializa o gerador de nums. aleatorios do Pascal

  //Inicializa variavais com vales diferentes:
  vlJogadaUsr        := '-';
  jogadaAnteriorUsr  := ' ';
  vlJogadaComp       := '-';
  jogadaAnteriorComp := ' ';
  
  repeat
    begin

      //Repete caso a jogada do usuário for igual a anterior:
      repeat
        begin
          
          vlJogadaUsr  := fncLeJogadaUsuario; // jogada do usuario
          writeln;

          //Valida se a jogada é repetida:
          ehJogadaRepetida := funcEhJogadaRepetida(jogadaAnteriorUsr, vlJogadaUsr);

          //writeln('é jogada repetida ? ', ehJogadaRepetida);// Msg. de Teste do retorno...
              

        end;
      until (not ehJogadaRepetida);

      //Repete caso a jogada do computador for igual a anterior:
      repeat
        begin
        
          vlJogadaComp  := fncJogadaComp; // jogada do computador
          writeln;

          //Valida se a jogada é repetida:
          ehJogadaRepetida := funcEhJogadaRepetida(jogadaAnteriorComp, vlJogadaComp);

          //writeln('é jogada repetida ? ', ehJogadaRepetida); // Msg. de Teste do retorno...

        end;
      until (not ehJogadaRepetida);


      writeln;
      writeln('  ****************************************  ');
      writeln('           Analizando as jogadas            ');
      writeln('  ****************************************  ');
      writeln('  A sua jogada foi          : "', funcTxtEscolha(vlJogadaUsr), '"');
      writeln('  A jogada do computador foi: "', funcTxtEscolha(vlJogadaComp), '"');

      writeln('  -------------------------------------------');
      if (vlJogadaUsr = vlJogadaComp) then
        begin
          writeln('  >>>>>>>>>>>  EMPATE!  <<<<<<<<<<<<<<<<<');
          writeln('  ',funcTxtEscolha(vlJogadaUsr), ' empata com ',funcTxtEscolha(vlJogadaComp),' !');
        end
      else
        begin
          if ((vlJogadaUsr = 'R') and (vlJogadaComp = 'T')) or
             ((vlJogadaUsr = 'P') and (vlJogadaComp = 'R')) or 
             ((vlJogadaUsr = 'T') and (vlJogadaComp = 'P')) then
            begin
              writeln('  >>>>>>>>  Voce ganhou!!  <<<<<<<<<');
              writeln('  ',funcTxtEscolha(vlJogadaUsr), ' ganha de ',funcTxtEscolha(vlJogadaComp),' !');
            end
          else
            begin
              writeln('  >>>>>>>>  Computador ganhou!! <<<<<<< ');
              writeln('  ',funcTxtEscolha(vlJogadaComp), ' ganha de ',funcTxtEscolha(vlJogadaUsr),' !');
            end;

      end;      
      writeln('  -------------------------------------------');

      writeln;

      //writeln('A jogada do anterior usuario foi   : "', jogadaAnteriorUsr, '"');  // Msg. de Teste do retorno...
      //writeln('A jogada anterior do computador foi: "', jogadaAnteriorComp, '"'); // Msg. de Teste do retorno...

      writeln;

      //Grava a jogadas para validar repetições:
      jogadaAnteriorUsr :=vlJogadaUsr;
      jogadaAnteriorComp :=vlJogadaComp;

      // Pergunta se quer continuar jogando:
      writeln('   Jogar Novamente? [S] ou [N]');
      readln(jogarNovamente);
      jogarNovamente := upCase(jogarNovamente);

    end;

  until (jogarNovamente = 'N');

  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;

end.