program cOwOmpiler1;

{This program is used to test declarations and writeln.}

var 
    i: integer;
    c: char;
    s: string;
    b: boolean;

begin
    i := 10;
    c := 'a';
    s := hello world;
    b := false;

    writeln(i);
    writeln(c);
    writeln(s);

    {To test datatype mismatches, uncomment any of the following lines:}
    {i := 'b';}
    {c := true;}
    {s := 100;}
    {b := goodbye philippines}

end.