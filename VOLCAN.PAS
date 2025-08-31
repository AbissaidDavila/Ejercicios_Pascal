program VolcanYMosaico;

uses crt;

procedure Volcan;
var
 i, j, espacios, cantidad: integer;
begin
 writeln('Figura Volcan');
 cantidad := 2;
 for i := 1 to 6 do

 begin
  espacios := 64 div 2 - cantidad div 2;
  for j := 1 to espacios do
   write(' ');
  for j := 1 to cantidad do
   write('*');
  writeln;
  cantidad := cantidad * 2;
 end;
end;


procedure Mosaico;
var
 i, j: integer;
begin
 writeln('Figura: Mosaico');
 for i := 1 to 8 do
 begin
  for j := 1 to 8 do
  begin
   if (i + j) mod 2 = 0 then
    write('*')
   else
    write(' ');
  end;
  writeln;
 end;
end;

begin
 clrscr;
 Volcan;
 writeln;
 Mosaico;
 readln;
end.