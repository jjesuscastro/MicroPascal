program exGlobal;
var
   a,s,b: integer;
procedure display;

var
   a, b: integer;

begin
   (* local variables *)
   a := 1;
   b := 1;
   
   writeln('Winthin the procedure');
   writeln('a = ', a , ' b =  ',  b);
   writeln('values inside procedure is ',a);
end;

function display2: integer;

var
   a, b: integer;

begin
   (* local variables *)
   a := 2;
   b := 2;
   
   writeln('Winthin the function');
   writeln('a = ', a , ' b =  ',  b);
   display2:= 2;
end;

begin
   a:= 4;
   b:= 4;
   
   writeln('Checking scope');
   writeln('The program');
   writeln('a = ', a , ' b =  ',  b); 
   
   display();
   s := display2();
   writeln('values inside function is ', s);
   
end.