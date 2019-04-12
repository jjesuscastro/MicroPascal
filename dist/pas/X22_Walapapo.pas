program Hi; {I am a one-line comment}

var a : integer;

(*  I am a
    multi-line
    comment *)

function square(b : integer): integer;
begin
    square := b * b;
end;

Procedure greet();
var
    a : integer;
    d : String;
begin
    d := 'Hello World!';
    writeln(d);    
    writeln('Now give me a number!');
    readln(a);
    write('Thank you!');
    writeln(' I can tell you the square of it is ');
    a := square(a);
    writeln(a);
    writeln('That is also the value of (a) for now')
end;

begin
    a := -1;
    greet();
    writeln('Back here in the main function, (a) is still ', a)
end.