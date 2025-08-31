program TrianguloNumerico;

uses crt;

var
 n, i, j, k: integer;
 fila: array[1..100] of integer;

begin
 clrscr;
 n := 10;

 for i := 1 to n do
 begin
  k := 0;
  for j := i to 2*i-1 do
  begin
   k:= k+1;
   fila[k] := j mod 10;
  end;

  for j := 2*i-2 downto i do
  begin
   k := k+1;
   fila[k] := j mod 10;
  end;

  for j:= 1 to n-i do
   write(' ');

  for j := 1 to k do
   write(fila[j]);

  writeln;
 end;

 readln;
end.