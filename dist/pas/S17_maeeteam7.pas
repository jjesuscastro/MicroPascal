program hi;
var
x : array[1..5] of integer;
i : integer;

begin
i := 1;
while i <> 5 do
    begin
        inc(i);
        write(i + '#: ')
        readln(x[i]);
        writeln(x[i]);
    end;
end.