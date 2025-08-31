program TableroAjedrez;
uses crt;
var
fila, col, k: integer;
begin
clrscr;
writeln(' a b c d e f g h');
for fila := 8 downto 1 do
begin
for k := 1 to 2 do
begin
write(fila, ' ');
for col := 1 to 8 do
begin

if ((fila + col) mod 2) = 0 then
textbackground(white)
else
textbackground(black);
write ('  ');
end;
textbackground(black);
writeln;
end;
end;
textbackground(black);
textcolor(lightgray);
writeln('presiona ENTER para salir...');
readln;
end.