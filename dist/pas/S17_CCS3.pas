{
    13. Subroutine
}

program thirdTes;
var
x : integer;

const
MAX = 9;

function changeValue(y: integer): integer;
begin
    changeValue := 4 + y;
end;

function stringReturner(y: integer): string;
var
s : string;
begin
    if y <> 9 then
        s := 'EXO IS ONE!'
    else
        s := 'EXO IS COMPLETE!';
    
    stringReturner := s;
end;


begin
    x := 5;
    writeln('x: ', x);
    x := changeValue(5);
    writeln('Update x: ', x);
    
    writeln;
    
    writeln(stringReturner(x));
    
    writeln(changeValue(-5+2))
end.