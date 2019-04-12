program cOwOmpiler5;

{This program is used to test arrays and for loops}

var
    a: array [1..20] of integer; {Array with 10 integers}
    i, j: integer;

begin
    for i := 1 to 20 do
        readln(a[i]);

    for j := 1 to 20 do
        writeln(a[j]);    
end.