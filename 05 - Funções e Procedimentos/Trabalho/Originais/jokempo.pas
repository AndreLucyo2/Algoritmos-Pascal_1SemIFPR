program jokempo;
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
uses sysutils;
{ Esse programa implementa o jogo chamado "jokempô"
  Para fazer a sua jogada, o usuário deve utilizar as letras "R" ou "1" para
  representar "pedra", "P" ou "2" para "papel", e "T" ou "3" para "tesoura".
  NOTA: não é permitido mostrar "pedra" duas vezes seguidas!
}

const
  // vetSimbolos eh um vetor com os símbolos do jogo
  vetSimbolos : array [1..3] of char = ('R', 'P', 'T');
var
  vlJogadaUsr    : char; //armazena a jogado do usuário.
  vlJogadaComp   : char; //armazena a jogado do computador.

function fncJogadaComp : char;
// Esta função implementa a jogada do computador no Jokempô.
// Para isso, retorna de forma aleatória os caracters "R", "P" ou "T".
var
  aux   : integer;
  res   : char;
begin
aux := random(3)+1; // retorna um núemro aleatório entre 1 e 3
res := vetSimbolos[aux]; // res armazena uma das letras do jogo("R", "P" ou "T")
fncJogadaComp := res;
end;

procedure prcMostraMenu;
// exibe o menu para o usuário saber quais sao as opcoes do jogo
begin
writeln('  ****************************************  ');
writeln('  **  Bem vindo ao Jokempô eletrônico!  **  ');
writeln('  ****************************************  ');
writeln('  ** Escolha sua opcao conforme abaixo: **  ');
writeln('  **  . "R" ou "1" para "PEDRA";        **  ');
writeln('  **  . "P" ou "2" para "PAPEL";        **  ');
writeln('  **  . "T" ou "3" para "TESOURA".      **  ');
writeln('  ****************************************  ');
write  ('  Entre com a sua opção: ');
end;

function fncLeJogadaUsuario: char;
// Essa funcao le a opcao de jogada do usuario
var
   aux      : char; // Opcao de jogada do usuario
   ehValida : boolean; // "true" se a jogada do usuario for valida
begin
   repeat
     prcMostraMenu;
     readln(aux);
     aux      := upCase(aux); // Transforma para maiuscula
     ehValida := (aux = 'R') or (aux = 'P') or (aux = 'T') or
                 (aux = '1') or (aux = '2') or (aux = '3');

     writeln('Você jogou "', aux, '"');
     if not ehValida then // se a jogada do usuario nao for valida...
        writeln('Sua opção eh inválida. Joque novamente.')
     else
        writeln('Sua opção eh válida.');
   until (ehValida);
fncLeJogadaUsuario := aux; // retorna a jogada do usuario
end;

// Programa principal
begin
randomize; // Inicializa o gerador de nums. aleatorios do Pascal

// Complete o código conforme apropriado

vlJogadaUsr  := fncLeJogadaUsuario; // jogada do usuario


vlJogadaComp := fncJogadaComp; // jogada do computador


writeln('Analizando as jogadas...');
writeln('A sua jogada foi: "', vlJogadaUsr, '"');
writeln('A jogada do computador foi: "', vlJogadaComp, '"');



writeln('Pressione [ENTER] para encerrar o programa...');
readln;
end.