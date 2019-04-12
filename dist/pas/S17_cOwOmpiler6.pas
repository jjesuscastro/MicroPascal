program cOwOmpiler6;

{This program is used to test if-then-else and relational operators}

var num: integer;

begin
    writeln(Enter grade:);
    readln(num);

    if (num >= 80) then
        writeln(Your grade is A.);
    else if (num < 79 AND num >= 60) then
        writeln(Your grade is B.);
    else if (num < 59 AND num >= 40) then
        writeln(Your grade is C.);
    else if (num < 39 AND num >= 20) then
        writeln(Your grade is D.);
    else
        writeln(You got a failing grade.);
end;
