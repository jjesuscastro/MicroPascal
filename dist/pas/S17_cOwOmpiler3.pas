program cOwOmpiler3;

{This program is used to test the loops, readln, and writeln.}

var
    sum, sides, input, i: integer;

begin
    readln(sides);
    for i:=1 to sides do
        begin
            readln(input);
            sum := sum + input;
        end;
    writeln(sum);
end.