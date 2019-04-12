program S18_A8_1;
Var x : integer;
Var y : integer;

procedure math;
Var a, b,
  add : integer;
  sub : integer;
  mul : integer;
  divi : real;
    begin
        a := 2;
        b := a+2; (*4*)
        add := a + b;
        write('a + b = ');
        writeln(add);
        sub := a - b;
        write('a - b = ');
        writeln(sub);
        mul := a * b;
        write('a * b = ');
        writeln(mul);
        divi := b div a;
        write('b / a = ');
        writeln(divi);
    end;

procedure loop;
Var i, c : integer;
    begin
        c := 0;
        for i := 1 to 5
            do c := c + 5;
        write('c = ');
        writeln(c);
    end;

function conditional(x : integer) : integer;
Var d : integer;
    begin
        d := 3;

        if(x > d) then
             writeln('x is greater than d')
        else
            writeln('x is less than d');

        conditional := d;
    end;

begin
    x := 1;
    math;
    loop;
    y := conditional(x);
    write('conditional test value: ');
    writeln(y);
    write('x value: ');
    writeln(x);
    readln(x);
    writeln(x);
end.


