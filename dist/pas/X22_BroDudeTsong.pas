program Hello;

var a,b,area:integer;

{test area function}
function compute_area(x:integer;y:integer):integer;
begin
    compute_area:=x*y;
end;

{test void function}
Procedure voidFunction();
var a,b,area,p:integer;
begin
    writeln ('input a & b: ');
    
    readln(a,b);
    p:=2*a+2*b;
    area:=compute_area(a,b);
    writeln('area= ',area);
    writeln('p=',p);
end;



{main}
begin
    voidFunction()
end.