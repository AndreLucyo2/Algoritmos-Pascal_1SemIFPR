{
  As provas de vestibular de uma determinada universidade são constituídas por
questões de múltiplas escolhas, com 5 alternativas. A alternativa "A" vale 1
ponto, a "B" 10 pontos, a "C" 100 pontos, a "D" 1000 pontos e a "E"
10.000 pontos. Cada candidato deve assinalar as alternativas que considerar
corretas, somando os pontos correspondentes e escrever essa soma como sendo a
resposta no gabarito da prova. Por exemplo, se numa questão um determinado
candidato assinalou as alternativas 1, 2 e 3 como sendo as corretas, então sua
resposta seria 1+10+100 = 111; se tivesse assinalado as alternativas 1, 3 e 5 a
resposta seria 1+100+10.000 = 10.101. Se nenhuma alternativa for assinalada,
então a resposta seria 0; se forem assinaladas todas as alternativas, a resposta seria
1 + 10 + 100 + 1000 + 10.000 = 11.111. Crie um programa que leia a resposta
fornecida pelo candidato na prova e diga quais foram as alternativas que ele
assinalou.

MODIFICAÇÃO: Você seria capaz de determinar se a resposta fornecida pelo usuário
             é válida? Veja, por exemplo que os valores "1", "10" e "11" são validos:
             "1" é produzido quando o candidato assinala apenas a alternativa "A", "10"
             é produzido quando o candidato assinala apenas a alternativa "B" e "11"
             é produzido quando o candidato assinala as alternativas "A" e "B". Mas o
             valor "12" ou "134" não pode ser obtido de ser obtido com nenhuma combinação
             das respostas. Como detectar isso?
}
{$codepage utf8} // Habilita suporte a caracteres acentuados (Unicode)
program questoesVestibular;
const
  VLALTERNATIVA_A = 1;     // Valor da alternativa "A"
  VLALTERNATIVA_B = 10;    // Valor da alternativa "B"
  VLALTERNATIVA_C = 100;   // Valor da alternativa "C"
  VLALTERNATIVA_D = 1000;  // Valor da alternativa "D"
  VLALTERNATIVA_E = 10000; // Valor da alternativa "E"
var
   vlResposta       : integer; // resposta do candidato, fornecida pelo usuário
   vlAux            : integer; // variavel auxiliar
   dsRespostasAss   : string;  // Mensagem dizendo quais foram as respostas assinaladas pelo candidato
   ehRespostaValida : boolean; // "true" se a resposta fornecida pelo usuário pode ser obtida pela soma
                               // dos pontos correspondentes a uma combinacao das alternativas
begin

  writeln('Entre com a resposta do candidato');
  readln(vlResposta);

  //Para mantr o valor original guarda em uma var aux.
  vlAux          := vlResposta; 
  dsRespostasAss := '';

  if (vlAux >= VLALTERNATIVA_E) then // se a resposta for maior 10000, quer dizer que a E foi marcada
    begin
      vlAux := vlAux - VLALTERNATIVA_E;
      dsRespostasAss := concat(dsRespostasAss, '(E)'); // registra que o candidato assinalou a alternativa "E"
    end;

  if (vlAux >= VLALTERNATIVA_D) then
    begin
      vlAux := vlAux - VLALTERNATIVA_D;
      dsRespostasAss := concat('(D) ', dsRespostasAss); // registra que o candidato assinalou a alternativa "D"
    end;

  if (vlAux >= VLALTERNATIVA_C) then
    begin
      vlAux := vlAux - VLALTERNATIVA_C;
      dsRespostasAss := concat('(C) ', dsRespostasAss); // registra que o candidato assinalou a alternativa "D"
    end;

  if (vlAux >= VLALTERNATIVA_B) then
    begin
      vlAux := vlAux - VLALTERNATIVA_B;
      dsRespostasAss := concat('(B) ', dsRespostasAss); // registra que o candidato assinalou a alternativa "D"
    end;

  if (vlAux >= VLALTERNATIVA_A) then
    begin
      vlAux := vlAux - VLALTERNATIVA_A;
      dsRespostasAss := concat('(A) ', dsRespostasAss); // registra que o candidato assinalou a alternativa "D"
    end;

    dsRespostasAss := concat('O candidato assinalou as seguintes alternativas: ', dsRespostasAss);
    writeln(dsRespostasAss);

    writeln('Pressione [ENTER] para encerrar o programa...');
    readln;
end.
