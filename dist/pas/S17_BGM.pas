program MinVal;
    var
       a, b, c,  min: integer;
    procedure least(x, y, z: integer; var m: integer);
    (* Finds the minimum of the 3 values *)

    begin
       if x < y then
          m:= x
       else
          m:= y;

       if z < m then
          m:= z;
    end; { end of procedure least }

    begin
       writeln(' Enter three numbers: ');
       a:=1;
       b:=2;
       c:=3;
       least(a, b, c, min); (* Procedure call *)

       writeln(' Minimum: ', min);
    end.