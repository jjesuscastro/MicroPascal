program cOwOmpiler4;

{This program is used to test if-then-else statements, functions, and procedures.}

var
    area, sides: integer;

function square(): integer;
var
    side: integer;
begin
    writeln('Side length: ');
    readln(side);
    square := side * side;
end;

function rectangle(): integer;
var
    length, width: integer;
begin
    writeln('Length:');
    readln(length);
    writeln('Width:');
    readln(width);
    rectangle := length * width;
end;

procedure goodbye;
begin
    writeln('Program will now terminate.');
end;

begin
    writeln('Enter 1 for square, 2 for rectangle: ');
    readln(sides);
    if (sides = 1) then
        area := square();
    if (sides = 2) then
        area := rectangle();
    
    writeln('Area:');
    writeln(area);

    goodbye();
end.