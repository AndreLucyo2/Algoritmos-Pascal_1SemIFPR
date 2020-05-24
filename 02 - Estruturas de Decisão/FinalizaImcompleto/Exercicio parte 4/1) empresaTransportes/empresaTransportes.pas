{
	Crie um algoritmo para uma empresa de transportes que, a partir do peso de uma
	encomenda fornecida pelo usuário, calcule o preço da remessa conforme a seguinte
	tabela:
	
	Peso da encomenda e Valor
	Faixa 1, 500 gramas ou menos: R$ 1,10
	Faixa 2, Mais de 500 gramas, mas não mais que 2 quilos: R$ 2,20
	Faixa 3, Mais de 2 quilos, mas não mais de 10 quilos: R$ 3,70
	Faixa 4, Mais de 10 quilos R$ 5,00 mais R$ 3,80/kg pelo peso que ultrapassar 10 Kg
	
	Informe ao usuário em que faixa de peso a encomenda se enquadra e quanto será pago
	pela remessa destacando, se for o caso, qual foi o peso em excesso (superior a 10Kg)
	e quanto será pago por esse excesso.
}

program empresaTransportes;  
   uses crt, sysutils; // bibliotecas úteis
  const
    VLFAIXA1     = 1.10; // Valor da faixa 1 de preços
    VLFAIXA2     = 2.20; // Valor da faixa 2 de preços
    VLFAIXA3     = 3.70; // Valor da faixa 3 de preços
    VLFAIXA4     = 5.00; // Valor da faixa 4 de preços
    VLFAIXA4ADIC = 3.80; // Valor por quilo da peso que ultrapassar 10 kg, na faixa 4
  var
    vlPesoEnc       : integer;  // peso da encomenda, em GRAMAS, fornecido pelo usuário
    vlPesoEncEx10Kg : integer;  // peso que excede 10kg da encomenda
    vlRemessa       : real; // Valor a ser pago pela encomenda
    vlRemessaEx10Kg : real; // valor a ser pago pelo peso em excesso (superior a 10kg)
    dsMensagem      : string;


begin

  vlPesoEncEx10Kg := 0;
  writeln('Entre com o peso da encomenda em gramas');
  readln(vlPesoEnc);
	vlPesoEnc:= vlPesoEnc/1000; //Converter para kg

  if vlPesoEnc <= 0.5 then
      begin
        vlRemessa:= VLFAIXA1 ;
      end

  Else If  (vlPesoEnc > 0.5) and (vlPesoEnc <= 2 )  Then
			Begin
          vlRemessa:= VLFAIXA2 ;
			End

	Else If  (vlPesoEnc > 2) and (vlPesoEnc <= 10 )  Then // se o peso da encomenda exceder 2000 gramas até 10
			Begin
          vlRemessa:= VLFAIXA3 ;

          dsMensagem := concat('Sua encomenda pesa ', intToStr(vlPesoEnc), ' gramas.', chr(10),
                          'Você pagará ',
                          floattostrf(vlRemessa, ffCurrency, 8, 2), ' pela remessa,');
			End
			
	Else If  (vlPesoEnc > 10 )  Then // se o peso da encomenda exceder 10000 gramas...
			Begin	
          vlPesoEncEx10Kg	:= (vlPesoEnc - 10);			
	    	  vlRemessaEx10Kg:= (VLFAIXA4 + (vlPesoEncEx10Kg * VLFAIXA4ADIC));

          dsMensagem := concat('Sua encomenda pesa ', intToStr(vlPesoEnc), ' gramas.', chr(10),
                          'Você pagará ',
                          floattostrf(vlRemessa, ffCurrency, 8, 2), ' pela remessa, sendo ',
                          floattostrf(vlRemessaEx10Kg, ffCurrency, 8, 2),
                          ' pelo peso que excedeu 10Kg (',
                          intToStr(vlPesoEncEx10Kg), ' gramas).');
			End;

  end;

  writeln('Orçamento de sua remessa: ');
  writeln(dsMensagem);

  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;
end.