program recursive;
const start = 0;
var last, i : integer;
function fibo(n : integer) : integer;
begin
   if n = 0 then
      fibo := 0
   else if n = 1 then
      fibo := 1
   else
      fibo := fibo(n-1) + fibo(n-2)
end;
begin
   last := 10;
   for i := start to last do
	  write(' ', fibo(i));
   writeln
end.