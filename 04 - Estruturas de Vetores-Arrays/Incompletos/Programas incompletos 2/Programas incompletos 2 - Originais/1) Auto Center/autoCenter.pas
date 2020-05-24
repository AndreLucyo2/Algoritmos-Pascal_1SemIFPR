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
uses sysUtils;
const
  vetServicos      : array [1..4] of string = ('troca de oleo', 'rodizio de pneus',
                                               'teste de bateria', 'inspeção do freio'); // servicos
  vetPrecoServicos : array [1..4] of real   = (125.00, 22.00, 15.00, 75.00); // precos dos servicos
var
  vlOpcao         : string;    // opcao do usuario
  cont            : integer;   // variavel contadora

{ **********************************************************************
  *                        PROGRAMA PRINCIPAL                          *
  ********************************************************************** }
begin
  writeln('Programa do Auto Center. Esses sao os nossos servicos:');
  for cont := 1 to 4 do
       writeln(vetServicos[cont]);
  writeln('Qual o servico que voce deseja?');
  readln(vlOpcao);

  //insira seu codigo aqui


  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;
end.


