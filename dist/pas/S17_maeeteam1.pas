program exArrays;
var
   n: array [1..5] of integer;
   i, m, j, k: integer;

procedure findMax(x: array [1..5]  of integer; m: integer);
    begin
        for k:= 1 to 5 do
          if m < n[k] then
             m:= n[k];

        writeln('Max is ', m);
    end;

begin
   n[ 1 ] := 15;
   n[ 2 ] := 12;
   n[ 3 ] := 100;
   n[ 4 ] := 81;
   n[ 5 ] := 3;

   m:= n[ 1 ];
   findMax(n,m);
   for j:= 1 to 5 do
      writeln('Element[', j, '] = ', n[j] );
end.
