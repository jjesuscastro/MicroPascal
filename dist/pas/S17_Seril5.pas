program S17_Seril5;
const baa = 100;
bc = 50;
var ac: array[-5..-2] of integer;
var a: integer;
var f: string;
var dd: integer;
function cmp_lala(B: integer): Boolean;
const baa = 10;
var de: array[1..3] of integer;
begin;
    WriteLn('Entering function cmp_lala');
    WriteLn('B: ', B);
    WriteLn('F: ', F);
    WriteLn('baa: ', baa);
    for a := 1 to 3 do
      begin;
        WriteLn('de[a] + a + baa: ', de[a] + a + baa);
      end;
    cmp_lala := B >= 5;
end;
procedure HH(A: integer);
var b: integer;
var cdd, dd: string;
begin;
  WriteLn('Entering function HH');
  cmp_lala(A);
  for b:=-5 to -2 do
    begin;
      WriteLn('ac[', b, ']=', ac[b]);
    end;
  WriteLn('ac[3]: ', ac[3]);
  WriteLn('Enter integer for a: ');
  read(a);
  WriteLn('a (local)=', a);
  WriteLn('Enter string for cdd: ');
  Read(cdd);
  WriteLn('cdd: ', cdd);
  WriteLn('Enter string for dd: ');
  Read(dd);
  WriteLn('dd: ', dd);
for a := 2 to baa do
    begin;
    WriteLn('a + baa=', a + baa);
    WriteLn('abc=', a * bc);
    end
end;
    (** comments please! **)
begin
  writeln ('Hello World');
  Writeln('1' + 'H');
  HH(4);
  Writeln(cmp_lala(5));
  if not (-1 > 5) and (a and 5 > 2) then
     begin;
      WriteLn('Not -1 > 5', nOt -1 > 5);
      WriteLn();
      end;
      WriteLn('Is this on?: ', 1 + 2 + 3 > -1 - -2 - -3);
  WriteLn('a (global) =', a);
  Write('Enter string for f: ');
  Read(f);
  f := '5';
  Writeln('f: ', f);
  WriteLn('dd (global)', dd);
  (* baa := 250 mod 4; *)
  F := 'a';;;;;;;;;;;
  for a := baa downto dd do
  begin;
    WriteLn('Hello');
  end;
  WriteLn(a);;;;;;;;;;;;;;;;;;
end.
