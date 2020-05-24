program exe01;
const
    size = 4;
var
    vet : array [1 .. size] of integer;
    cont :integer;
    flag : integer;
begin
    repeat
    //zerar o vetor
    for cont :=1 to size do
        vet[cont] :=0;
    //coleta os valores
    for cont :=1 to size do
    begin
        writeln('Digite um numero para a posicao: ',cont);
        readln(vet[cont]);
        flag := vet[cont];
        if(flag = -1)then
            break;
    end;
    //apresenta os valores armazenados
    for cont := size downto 1 do
    begin
        writeln('Posicao: ',cont, ' Valor: ',vet[cont]);
    end;
    readln;
    until (flag = -1);
    readln;
end.