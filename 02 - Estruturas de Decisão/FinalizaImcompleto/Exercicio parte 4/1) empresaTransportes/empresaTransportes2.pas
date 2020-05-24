program empresaTransportes;
   {$codepage UTF8}  //Aceita caracteres epeciais e acentos
   uses crt, sysutils; // bibliotecas úteis
  const
    VLFAIXA1     = 1.10; // Valor da faixa 1 de pre�os
    VLFAIXA2     = 2.20; // Valor da faixa 2 de pre�os
    VLFAIXA3     = 3.70; // Valor da faixa 3 de pre�os
    VLFAIXA4     = 5.00; // Valor da faixa 4 de pre�os
    VLFAIXA4ADIC = 3.80; // Valor por quilo da peso que ultrapassar 10 kg, na faixa 4
  var
    vlPesoEnc       : Integer;  // peso da encomenda, em GRAMAS, fornecido pelo usu�rio
    vlPesoEncEx10Kg : integer;  // peso que excede 10kg da encomenda
    vlRemessa       : real; // Valor a ser pago pela encomenda
    vlRemessaEx10Kg : real; // valor a ser pago pelo peso em excesso (superior a 10kg)
    dsMensagem      : string;


begin


  writeln('Entre com o peso da encomenda em KG');
  readln(vlPesoEnc);
	//vlPesoEnc:= vlPesoEnc/1000; //Converter para kg


  if vlPesoEnc <= 0.5 then
      begin
        vlRemessa:= VLFAIXA1 ;
      end

  Else If  (vlPesoEnc > 0.5) and (vlPesoEnc <= 2 )  Then
			Begin
          vlRemessa:= VLFAIXA2 ;
			End

	Else If  (vlPesoEnc > 2) and (vlPesoEnc <= 10 )  Then // se o peso da encomenda exceder 2000 gramas at� 10
			Begin
          vlRemessa:= VLFAIXA3 ;

          dsMensagem := Concat('Sua encomenda pesa ', intToStr(vlPesoEnc), ' gramas.', chr(10),
                          'Voce pagara ',
                          floattostrf(vlRemessa, ffCurrency, 8, 2), ' pela remessa,');
			End

	Else If  (vlPesoEnc > 10 )  Then // se o peso da encomenda exceder 10000 gramas...
			Begin
          vlPesoEncEx10Kg	:= (vlPesoEnc - 10);
	    	  vlRemessaEx10Kg:= vlPesoEncEx10Kg * VLFAIXA4ADIC;
					vlRemessa:= VLFAIXA4 + vlRemessaEx10Kg;

          dsMensagem := Concat('Sua encomenda pesa ', intToStr(vlPesoEnc), ' kg.', chr(10), chr(13),'Voce pagare ',
                          floattostrf(vlRemessa, ffCurrency, 8, 2),' pela remessa, sendo ',
                          floattostrf(vlRemessaEx10Kg, ffCurrency, 8, 2),
                          ' pelo peso que excedeu 10Kg (',
                          floattostr(vlPesoEncEx10Kg*1000), ' gramas).');
	    End;                        

  

  writeln('Or�amento de sua remessa: ');
  writeln(dsMensagem);

  writeln('Pressione [ENTER] para encerrar o programa...');
  readln;
end.