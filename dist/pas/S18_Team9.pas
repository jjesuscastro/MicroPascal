	Program Name1;
	var b, x : integer;
	var c : integer;
	var a : array[1..13] of integer;
	const pi1 = 3 + 4;
		  baa = 'av1';
		  (*comment here*)
	procedure bruh;
	var d, c : boolean;
	Begin
		d := true;
		a[1] := 10;
		c := a[1]+5>15;
		if c then
		begin
			writeln('bruh', d,c);
		end;
	End;
	Function dude(a : Integer; b : String) : Integer;
	var e, f : Integer;
	Begin
		e := 10;
		dude := e + a;
		writeln('dude', b);
		writeln(dude);
	End;
	Begin
		x := 12 + dude(1, 'bruh'); {comment here}
		readln(b);
		writeln(dude(1, 'bruh'), b + x);
		c := 12 > 13;
		writeln(c);
		for x := 1 to 3 do
		begin
			dude(1, 'dude1');
			b := 1 + x - 12;
			write(b);
			if (baa = 'dude') and 12 = (pi1) + (5) then
			Begin
				write('bruh' + 'tha');
				bruh;
				dude(1, 'bruh');
			end
			else 
			begin 
				write('dude'); 
				write('dude2'); 
			end;
		end;
	End.
	
	