program testscript;

var
    x : integer;
    y : integer;

    a : string;

    j : boolean;

    l : ARRAY[1..5] OF integer;

const
    P1 = 1+1;

procedure prctest;
begin
end;

function functest() : integer;
begin
end;

begin

    { integers }
    X := 20;
    y := 10;

    write('value of x is ');
    writeln(x);
    write('value of y is ');
    writeln(y);

    write('lets rewrite x = ');
    read(x);
    write('lets rewrite y = ');
    read(y);

    write('value of x is ');
    writeln(x);
    write('value of y is ');
    writeln(y);

    { arithmetic operations }
    write('x + y is ');
    writeln(x+y);
    write('x - y is ');
    writeln(x-y);
    write('x * y is ');
    writeln(x*y);
    write('x / y is ');
    writeln(x/y);
    write('x % y is ');
    writeln(x%y);

    { strings }
    a := 'woah';
    writeln(a);

    { boolean }
    j := false;
    writeln(j);

    { constants }
    { writeln(P1); }

    { for loop }
    for x := 1 to 5 do
    begin
        writeln('for loop index', x);
    end;

    { if statements }
    if true
    then writeln(true);

    if false
    then 
        writeln('second if is true');
    else 
        writeln('second if is false');

    prctest;

    { arrays }


end.