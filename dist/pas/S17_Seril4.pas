program S17_Seril4;
const baa = 100;
bc = 50;
var ac: array[-5..-2] of integer;
var a: integer;
var f: string;
function cmp_lala(B: integer): Boolean;
const baa = 10;
begin;
    WriteLn('B: ', B);
    WriteLn('F: ', F);
    WriteLn('baa: ', baa);
    cmp_lala := B >= 5;
end;
procedure HH(A: integer);
var b: integer;
var cdd, dd: string;
begin;
  cmp_lala(A);
  for b:=-5 to -2 do
    begin;
      WriteLn('ac[', b, ']=', ac[b]);
    end;
  WriteLn('ac[3]: ', ac[3]);
  WriteLn('Enter integer for a: ', a);
  read(a);
  WriteLn('a=', a);
  WriteLn('Enter string for cdd: ', cdd);
  Read(cdd);
  WriteLn('Enter string for dd: ', dd);
  Read(dd);
  WriteLn('cdd:', cdd);
  WriteLn('dd: ', dd);
for a := 2 to baa do
    begin;
    WriteLn('a + baa=', a + baa);
    WriteLn('abc=', a * bc);
    end
end;
    (** comments please! **)
begin
  writeln ('Hello World', '1' + 'H');
  HH(4);
  Writeln(cmp_lala(5));
  if not (-1 > 5) and (a and 5 > 2) then
     begin;
      WriteLn('Not -1 > 5', nOt -1 > 5);
      WriteLn();
      end;
      WriteLn('Is this on?: ', 1 + 2 + 3 > -1 - -2 - -3);
  WriteLn('a=', a);
  Write('Enter string for f: ');
  Read(f);
  Write(f + 'abb');
  baa := 250 mod 4;
end.
