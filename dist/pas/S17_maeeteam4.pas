program blackyell;

var
   i: integer;

begin
    for i := 1 to 30 do
       begin
           if (i mod 2 = 1) then
               begin
                   writeln('black');
               end
           else
               begin
                   writeln('yellow');
               end;
               
           writeln('and');
        end;
end.