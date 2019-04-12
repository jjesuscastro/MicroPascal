program factorial;

function factorial(n: int): int;
begin
  if n <= 1 then
    factorial = 1
  else
    factorial = n*factorial(n - 1);
end;

begin
writeln('Hello World');
readln;
end.