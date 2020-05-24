program calculaArea; 
  {$codepage UTF8}    //Aceita caracteres epeciais e acentos
  uses crt, sysutils; // bibliotecas úteis
	 Var
      vlOpcao : integer;
			vlArea : real;

procedure procCalcAreaCirculo;
  Var
   		vlRaio : real;

   begin
      writeln('Entre com o raio do circulo');
      readln(vlRaio);
      vlArea := 3.141592654 * sqr(vlRaio);
   end;

//--------------------------------------------------------------------
procedure procCalcAreaQuadrilatero;
   Var
      vlBase, vlAltura : real;
   begin
      writeln('Entre com a base do quadrilatero');
      readln(vlBase);
      writeln('Entre com a altura do quadrilatero');
      readln(vlAltura);
      vlArea := vlBase * vlAltura;
   end;

//--------------------------------------------------------------------
procedure procCalcAreaTriangulo;
   Var
      vlBase, vlAltura : real;
   begin
      writeln('Entre com a base do triangulo');
      readln(vlBase);
      writeln('Entre com a altura do triangulo');
      readln(vlAltura);
      vlArea := (vlBase * vlAltura)/2;
   end;

//--------------------------------------------------------------------
procedure procCalcAreaLosango;
   Var
      vlDiag1, vlDiag2 : real;

   begin
      writeln('Entre com a primeira diagonal do losango');
      readln(vlDiag1);
      writeln('Entre com a segunda diagonal do losango');
      readln(vlDiag2);
      vlArea := (vlDiag1 * vlDiag2)/2;
   end;

//--------------------------------------------------------------------
// Inicio do programa principal
//--------------------------------------------------------------------
Begin
   writeln('(1) Circulo, (2) quadrilAtero, (3) triangulo, (4) losango');
   readln(vlOpcao);
	 
   if (vlOpcao = 1) then
      begin
         procCalcAreaCirculo;
      end
   else if (vlOpcao = 2) then
      begin
         procCalcAreaQuadrilatero;
      end
   else if (vlOpcao = 3) then
      begin
         procCalcAreaTriangulo;
      end
   else
      begin
         procCalcAreaLosango;
      end;

   writeln('A Area da figura eh ', vlArea:0:3);
   readln;
end.