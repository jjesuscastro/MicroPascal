program nested;
var i, j: integer;
begin
  if true then
     if not false then
	    if true or false then
			for i := 1 to 10 do
			begin
			  write(i, ': ');
			  for j := -5 to 5 do
			  begin
				 write(j, ' ');
			  end;
			  writeln
			end
end.