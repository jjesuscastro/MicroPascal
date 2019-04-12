{commenterino despacito}
program S18_BornalesLuisYuvallos;
var f,b: integer;
var cc: char;
procedure HH(b:integer; c:char);
var j: integer;
begin;
    for b:= 0 to f-1 do
        begin;
            for j:=0 to f-1 do
            begin;
                if (b = 0) or (b = f-1) then
                    begin
                        Write(c);
                    end
                    
                else 
                    begin;
                        if ( j = 0 ) or ( j = f-1 ) then
                            begin;
                                Write(c);
                            end
                            
                        else
                            begin;
                                Write(' ');
                            end;
                    end;
            end;
            
            WriteLn();
        end;
end;

(** start of progrem **)

begin
    WriteLn('Enter size');
    Read(f);
    Read(cc);
    WriteLn('Enter char');
    Read(cc);
    Writeln('begin');
    HH(f,cc);
    Writeln('end');
end.
(** end of progrem **)