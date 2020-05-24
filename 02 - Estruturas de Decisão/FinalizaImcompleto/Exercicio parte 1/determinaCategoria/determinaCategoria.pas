{
*******************************************************************************
*  Baseado na Avaliação parcial do curso Técnico em Informática Integrado ao  *
*  Ensino Médio sobre estruturas sequenciais.                                 *
*******************************************************************************
===============================================================================
Questão 1 - Determinando a categoria de um atleta – Faça um algoritmo que, a
            partir do ano de nascimento de um atleta e do ano atual, determine
            qual é a categoria a que ele pertence, conforme a tabela abaixo. Ao
            final, escreva na tela qual é a categoria.
                   Idade do Atleta      Categoria
                   Até 7 anos           Mirim
                   De 8 até 9 anos      Infantil A
                   De 10 até 11 anos    Infantil B
                   De 12 até 13 anos    Infanto A
                   De 14 até 15 anos    Infanto B
                   De 16 até 17 anos    Juvenil
                   De 18 até 29 anos    Adulto
                   Acima de 30          Master 1
}
program determinaCategoria;
var
  vlIdadeAtleta    : integer; // idade do atleta (fornecida pelo usuário)
  dsCategoria      : string;  // Categoria do atlera
begin
writeln('Entre com a idade do atleta');
readln(vlIdadeAtleta);
if (vlIdadeAtleta >= 30) then
   dsCategoria := 'Master 1';
  // continue o programa, inserindo seu código aqui

writeln ('O atleta tem ', vlIdadeAtleta, ' anos e pertence a categoria ', dsCategoria);
writeln('Digite [Enter] para encerrar...');
readln;
end.

