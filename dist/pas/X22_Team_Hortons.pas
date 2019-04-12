program team_hortons_factorial;
function factorial(x: integer): integer;
begin
  if x > 1 then
    factorial:= x * factorial(x - 1)
  else
    factorial:= 1;
end;

var x, f: integer;
begin
  write('input x = ');
  readln(x);
  f:= factorial(x);
  writeln(x,'! = ',f);
  readln;
end.