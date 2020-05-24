{Leia com atenção o problema abaixo e, depois, analise o programa que segue.
 Complete o programa para resolver o problema descrito.
 ===============================================================================
 Problema:
 Escreva um programa para um Auto Center que mostre ao usuário uma lista dos
 serviços oferecido (troca de oleo, rodizio de pneus, teste de bateria ou
 inspeção do freio). O usuário deve inserir uma string que corresponda a uma
 dessas opções e exiba a opção e seu preço (R$ 125.00, R$ 22.00, R$ 15.00 ou
 R$ 75.00, respectivamente). Se o usuario especificar uma opcao invalida, o
 programa deve exibir uma mensagem de erro.

 MODIFICAÇÃO: claramente, não é muito razoável esperar que os usuários digitem
              entradas longas como "troca de oleo" sem cometer erros. Então,
              modifique o programa para que uma opcao seja selecionada quando o
              usuario inserir os três primeiros caracteres de um serviço. Por
              exemplo, "troca de oleo" é selecionada quando o usuario digitar
              "tro" e "rodizio de pneus" é selecionado quando o usuario digitar
              "rod".
               ** Não utilize funções de manipulação de strings como
                  "substring", APENAS vetores! **
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program autoCenter;
uses crt, sysUtils;
const
  tamVetFix =4;
  vetServicos      : array [1..tamVetFix] of string = ('Troca de oleo', 
                                                       'Rodizio de pneus',
                                                       'Teste de bateria', 
                                                       'Inspecao do freio'); // servicos
                                               
  vetPrecoServicos : array [1..tamVetFix] of real   = (125.00, 
                                                       22.00, 
                                                       15.00, 
                                                       75.00); // precos dos servicos
var
  vlOpcao         : string;    // opcao do usuario
  cont            : integer;   // variavel contadora
  txtOpc          : string;
  ind             : integer;
  opcInvalida     : boolean;
  letra           : string;

{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin

  //opção é invalida?
  opcInvalida := true;

  writeln('Programa do Auto Center. Esses sao os nossos servicos:');

  //Mostra vetor das opçõs de serviço:
  writeln;
  writeln('==========  LISTA DOS SERVIÇOS OFERECIDOS ============');

  for cont := 1 to tamVetFix do
  begin
    writeln('   ',vetServicos[cont]);
  end;

  writeln('=====================================================');
  writeln;

  repeat 
    //Limpa variavel
    vlOpcao:='';

    //Solicita para escolher uma das opções:    
    writeln('Informe 3 primeiras letras do servico que voce deseja?');

    //For nas tres primeiras teclas digitadas:
    for cont := 1 to 3 do
    begin  
      letra := readkey; //Le o caracteres digitado
      write(letra);//Mostra o caracteres digitado
      vlOpcao :=concat(vlOpcao,letra);//Une a letra digitada 
    end;

    writeln; 

    for cont := 1 to tamVetFix do
    begin
      //Lê e Extrai as 3 caracteres da opção predefinida:
      txtOpc := copy(vetServicos[cont],0,3);//Pega os 3 caracteres da opção:    

      if (upperCase(vlOpcao)) = (upperCase(txtOpc)) then
      begin
        writeln;
        writeln('...............................................');
        writeln;
        writeln('   Opção Escolhida foi: [',upperCase(vlOpcao),']');
        writeln('   Opção : ',vetServicos[cont]);
        writeln('   Valor : R$',(vetPrecoServicos[cont]):0:2);
        writeln;
        writeln('...............................................');
        writeln;

        //opção é invalida?
        opcInvalida := false;
        break;
      end;

    end;

    if opcInvalida then
    begin
      writeln;
      writeln('>>>>>>>>>>>> ATENÇÃO ! <<<<<<<<<<<<<<<<<<<<');
      writeln('Voce forneceu uma opcao invalida ( ', upperCase(vlOpcao), ' )!');
      writeln('Por favor escolha novamente!');
      writeln;
    end;

  until (opcInvalida = false);

  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;

end.