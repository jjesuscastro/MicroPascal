program S17_Seril1;
const baa = 10;
bc = 50;
var ac: array[-5..-2] of integer;
var a: integer;
var f: string;
function cmp_lala(B: integer): Boolean;
begin;
    WriteLn('B: ', B);
    WriteLn('F: ', F);
    cmp_lala := B >= 5;
end;
procedure HH(A: integer);
var b: integer;
var cdd, dd: string;
begin;
  cmp_lala(A);
  WriteLn('ac[5]=', ac[-5]);
  read(a);
  WriteLn('a=', a);
  Read(cdd, dd);
  WriteLn('cdd:', cdd);
  WriteLn('dd: ', dd);
for a := 2 to baa do
    begin;
    WriteLn('a + baa=', a + baa);
    WriteLn('abc=', a * bc);
    end
end;
begin
  writeln ('Hello World', '1' + 'H');
  WriteLn(HH(4));
  Write(cmp_lala(5));
  if not (-1 > 5) and (a and 5 > 2) then
    WriteLn(not -1 > 5);
  WriteLn('a=', a);
  Readln(f);
  Write(f + 'abb');
end.
