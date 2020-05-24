{
Um carpinteiro esculpe placas personalizadas para estabelecimentos comerciais e
deseja um programa que faça orçamentos das placas que produz, considerando as
seguintes informações:
          a. O valor mínimo de qualquer placa é de R$ 300,00;
          b. Placas de angelim custam R$ 150,00 adicionais, mas placas de pinus não
             possuem nenhum custo extra;
          c. Frases com até 12 caracteres estão incluídas no valor mínimo; para frases
             maiores, são cobrados R$ 15,00 por caractere;
          d. Para placas com dizeres brancos ou pretos não se cobra adicional, mas se
             ele contiver letras douradas, cobra-se R$ 60,00 a mais.
Baseado nessas informações, construa um algoritmo que leia o número de um
orçamento, o nome do cliente, tipo de madeira (angelim ou pinus), número de
caracteres da mensagem e a cor dos caracteres (branco, preto ou dourado). Ao
final, imprima todos os dados de entrada e o preço da placa orçada.

Modificação: Após construir esse este algoritmo, tente modificá-lo para que o usuário
informe a mensagem que deverá ser esculpida ao invés do número de caracteres dessa
mensagem. Assim, para que o orçamento seja emitido, o próprio algoritmo deverá
contar quantos caracteres a mensagem contém, o que pode ser feito com a função
length. Por exemplo, se você armazenar a mensagem numa variável chamada
strMensagem, o número de caracteres será dado por length(strMensagem).}

//NOTA: ESTE PROGRAMA ESTAH INCOMPLETO. FINALIZE-O CONFORME APROPRIADO!

program placas;
   //{$codepage UTF8}    //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas úteis

   const
      vlPrecoMin        = 300.00; // valor minimo de uma plava
      vlPrecoAdicAng    = 150.00; // adicional por placa de angelim
      vlPrecoCaracAdic  = 15.00;  // preco por caracter adicional (para mensagens com mais de 12 caracteres)
      
   var
      // Variáveis de entrada
      nrOrcamento    : string; //numero do orcamento, fornecido pelo usuario
      nmCliente      : string; // nome do cliente
      nrCaracteres   : integer; // numero de caracteres da mensagem
      txtMensagem    : string; // texto da mensagem
      idTipoMadeira  : integer; // id do tipo de madeira: 1 para "angelim" e 2 para "pinus"
      idCorCaracteres: integer; // id da cor dos caracteres: 1 para "branco", 2 para "preto", 3 para "dourado"
      idOpcaoMsg     : integer; //tipo de entrada da mensagem se num carateres ou texto
      
      // Variáveis de saída
      dsTipoMadeira  : String; // tipo de madeira: "angelim" ou "pinus"
      dsCorCaracteres: string; // cor dos caracteres: "branco", "preto" ou "dourado"
      vlPlaca        : Real;

begin

   //atribui o valor minimo ao valor da placa
   vlPlaca := vlPrecoMin;

   // Entrada de dados pelo usuário
      writeln('Informe o numero do orcamento!');
      readln(nrOrcamento);
      writeln('');  

      writeln('Informe o nome do cliente!');
      readln(nmCliente);
      writeln('');  

      writeln('Como gostaria de orçar sua Placa?');
      writeln('([1])para numero de caracteres ou [2] para informar o texto da mensagem');
      readln(idOpcaoMsg);
      //Definir a forma de entrada da mensagem:
      case idOpcaoMsg of
         1:begin
            writeln('Informe o numero de caracteres da mensagem!');
            txtMensagem:='Não Informado!';
            readln(nrCaracteres);  
         end;

         2:begin
            writeln('Informe o texto da mensagem!');
            readln(txtMensagem);
            nrCaracteres := length(txtMensagem);//Pegar o numero de caracteres da msg.
         end;

      else
         begin
            writeln('Opção Inválida!');  
            writeln('Aplicação será encerrada!');
            writeln('');
            exit;//Finaliza a aplicação     
         end;
         
      end;

      writeln();
      writeln('Informe o tipo da madeira ([1] para "angelim" ou [2] para "pinus")');
      readln(idTipoMadeira);
      writeln();  

      writeln('Informe a cor dos caracteres!');
      writeln('([1] para "branco", [2] para "preto" ou [3] para "dourado")');
      writeln();  
      readln(idCorCaracteres);
      //Definir a cor:
      case idCorCaracteres of
         1:begin
            dsCorCaracteres:= 'Branco';
         end;

         2:begin
            dsCorCaracteres:= 'Preto';
         end;

         3:begin
            dsCorCaracteres:= 'Dourado';
            vlPlaca:= vlPlaca + 60;
         end;
      else
         begin
            dsCorCaracteres:= 'Branco';
            writeln('Cor informada inválida. Considerando como "Branco".') 
         end;
         
      end; 

   //ajusta valor da placa conforme tipo da madeira:
   case idTipoMadeira of
      1:begin
            dsTipoMadeira := 'Angelim';
            vlPlaca := vlPlaca + vlPrecoAdicAng; // Em caso de placas de angelim, + um adicional
         end;
      2:begin 
            dsTipoMadeira := 'Pinus';
         end;

   else
      begin
         writeln('Tipo de madeira informada inválida. Considerando a madeira como "Pinus".'); 
         dsTipoMadeira := 'Pinus';
      end;
   end;

   //Ajusta o valor da placa conforme num. caracteres:
   if (nrCaracteres > 12) then
      begin
         vlPlaca:=vlPlaca + ( (nrCaracteres - 12 ) * vlPrecoCaracAdic);
      end; 

          

   // Saida: imprime o orcamento na tela
   writeln();    
   writeln('============ Orcamento de sua Placa ================== ');
   writeln('  Numero do Orcamento...................... ',nrOrcamento);
   writeln('  Texto da mensagem........................ ',txtMensagem);
   writeln('  Quantidade de caracteres................. ',nrCaracteres);
   writeln('  Madeira da placa......................... ',dsTipoMadeira);
   writeln('  Cor dos caracteres....................... ',dsCorCaracteres);
   writeln('  Preco final.............................. R$',vlPlaca:0:2);
   writeln();    

   writeln('Digite [ENTER] para encerrar...');
   readln;
end.