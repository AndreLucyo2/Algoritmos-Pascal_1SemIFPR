program project1;
 uses crt;
var
  tipo1 : Integer;
  tipo2 : Integer;
  tipo3 : Integer;

begin

    writeln('Digite um 1 para sangue quente e 2 para sangue frio');
    readln(tipo1);

    writeln ('Vertebrados');

   If (tipo1= 1) then

       begin
             writeln ('Sangue quente');
             writeln('Digite um 1 para mamifero e 2 para passaro');
             readln(tipo2);
             If (tipo2= 1) then

                 begin
                  writeln ('mamifero');
                  writeln ('urso')
                 end

              else If (tipo2= 2) then
                 begin
                       writeln ('passaro');
                       writeln ('Acestruz')
                 end

              else If (tipo2 <> 1)  or (tipo2 <> 2)then

               begin

                 writeln ('valor informado invalido!')

               end
       end

   else If (tipo1= 2) then

       begin

         writeln ('Sangue frio');
         writeln('Digite um 1 para Peixes e 2 para repteis ou 3 anfibios');
             readln(tipo3);
             If (tipo3= 1) then

                 begin
                  writeln ('Peixes');
                  writeln ('salmao')
                 end

              else If (tipo3= 2) then
                 begin
                       writeln ('repteis');
                       writeln ('tartaruga')
                 end

              else If (tipo3= 3) then
                 begin
                       writeln ('anfibios');
                       writeln ('sapo')
                 end

              else If (tipo3 <> 1)  or (tipo3 <> 2)  or (tipo3 <> 3)then

               begin

                 writeln ('valor informado invalido!')

               end

       end

   else If (tipo1 <> 1)  or (tipo1 <> 2)then

       begin

         writeln ('valor informado invalido!')

       end ;

  readkey;

end.


