program S18_TeamOnAndPumbaa;
Var x : integer;
Var y : integer;
Var z : integer;
Var w : integer;
Var word : string;

(* Testing of complex arithmetic *)
procedure complexArithmetic;
Var x, y, result : integer;
    begin
        x := 25;
        y := 10;
        result := x + y - x * y;
        write('Arithmetic result: ');
        writeln(result);
    end;

(*Testing for loop and the procedure subroutine*)
procedure loopTest;
Var i, x : integer;
    begin
        x := 0;
        for i := 1 to 25 do
            x := x + 2;
        write('LooptestResult: ');
        writeln(x);
    end;

(*Testing for conditional statements and the function subroutine*)
function conditionalTest(x : integer) : integer;
Var a : integer;
Var flag : boolean;
    begin
        a := 3;

        if(x > a) then
            flag := true
        else
           flag := false;

        if(flag and true) then
           writeln('x is greater than 3')
        else
           writeln('x is less than 3');

        if (not flag or false ) then
           writeln('this will print');

        if(x <> 5) then
            writeln('this will also print');

        conditionalTest := a;
    end;

begin
    x := 5;
    y := 2;
    word := 'Created by Alex and Jess';
    complexArithmetic;
    loopTest;
    z := conditionalTest(1);
    write('Value returned by conditionalTest: ');
    writeln(z);


    write('MainProgram x: ');
    writeln(x);
    write('MainProgram y: ');
    writeln(y);
    write(word);


end.
