(*
    8. Conditional construct
    9. Iterative construct
    10. Array
    11. Relational operators
    12. Boolean operators
*)

program secondTest;

{
    7. Conditional construct
    8. Relational operators
}
procedure conditionalRelation;
var
x, y : integer;
    begin
        writeln('Check Conditional and Relation Operators');
        write('Input two integers (x and y): ');
        readln(x, y);
        
        if x = y then
            writeln('1. x = y')
        else
            writeln('1. x <> y');
        
        if x <> y then
            writeln('2. x <> y')
        else
            writeln('2. x = y');
            
        if x > y then
            writeln('3. x > y')
        else
            writeln('3. !(x > y)');
        
        if x < y then
            writeln('4. x < y')
        else
            writeln('4. !(x < y)');
        
        if (x >= y) then
            writeln('5. x >= y')
        else
            writeln('5. !(x >= y)');
            
        if (x <= y) then
            writeln('6. x <= y')
        else
            writeln('6. !(x <= y)');
            
        writeln;
    end;
    
{
    7. Conditional construct
    9. Boolean operators
}
procedure conditionalBoolean;
var
s : string;
    begin
        writeln('Check Conditional and Boolean Operators');
        
        writeln('Which is a heavier a kilogram of steel or a kilogram of feathers?');
        readln(s);
        
        if not (s = 'both') then
            writeln('judging you')
        else
            writeln('that is right');
        
        if (s = 'steel') or (s = 'feathers') then 
            writeln('seriously judging you') 
        else
            writeln('hmmm');
        
        writeln;
        writeln('Next question');
        writeln('Who is the strongest avenger?');
        readln(s);
        
        if not (s = 'hulk') and (s = 'idk') then
            writeln('okay lang yan')
        else
            writeln('weh sure ka ba');
        
        writeln;
    end;

{
    9. Iterative Construct
    10. Array
}
procedure iteration;
var 
a : array [1..3] of integer;
i : integer;
    begin
        writeln('Check for Iterative Construct and Array');
    
        for i := 1 to 3 do
            a[i] := i + 1; 
        
        for i := 1 to 3 do
            writeln('a[', i, ']: ', a[i]);
        
        writeln;
    end;

procedure combination;
var 
c : array [1..5] of integer;
i : integer;
j : integer;
b : boolean;
    begin
        writeln('Check for Conditional and Iteration');
        
        for i := 1 to 5 do
            c[i] := i; 
        
        j := 12;
        b := false;
            
        for i := 1 to 5 do
            if c[i] = j then
                begin
                    writeln('j here');
                    b := true;
                end
            else
                writeln('j not here');
        
        writeln('found a ', j, '?');
        if b = false then
            writeln('sad')
        else
            writeln('yay!');
        
        if b = true and not (j >= 2) then
            writeln('False and False or True and True')
        else
            writeln('At least 1 True');
            
        writeln(b = true);
        writeln(not (j >= 2));
        writeln;
    end;

begin
  conditionalRelation;
  conditionalBoolean;
  iteration;
  combination;
end.