var i,j, plier, get: integer;

procedure A1(x, y : integer);   
    function multi(x, y : integer): integer;
            begin
                plier := x * y;
            end;
            
    begin
        writeln('Bye'); 
        get := multi(x,y);
        writeln(get);
    end;
    
            
    

begin 
    
    i := 6;
    j := 7;
    
    writeln('Hi?????');
    A1(i,j);
    writeln('END');
end.
        
