{implemented:
    readln();
    write();
    writeln();
    Data types:
        char
        integer
        boolean
        string
    variables
    for loop (not nested)
    comments
    assignment
}

program helloworld;

var
x : char = ']';
{y : char = '23'; char but more than one assigned}
i : integer = 100;
{j : integer = a; integer but assigned a letter}
a : string = 'test123';
b : boolean = false;

begin
    write('original value of i is ');
    writeln(i);
    write('scan int: ');
    readln(i);
    write('i = ');
    writeln(i);
    write('a = ');
    writeln(a);
    write('b = ');
    writeln(b);
    {write(c); error because there is no decalared c}
    {comments work}
    (*comments work*)
    {(*comments
    *) work}
    for i := 0 to 3 do
    begin
        writeln('inside loop');
    end;
end.
