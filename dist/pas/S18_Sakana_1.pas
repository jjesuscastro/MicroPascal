program normalTest;
const abc = 25;
      qwe = 'Qwerty!';
	  boo = true;
	  ch = 'c';
var x,y,z : integer;
	s : string;
	c : char;
	b : boolean;
	a : array [-2..5] of integer;
procedure proc();
begin
	writeln('Inside proc print');
	writeln()
end;
function func(x, y : integer ; t : string) : string;
var i : integer;
begin
	x := x + y;
	i := x * y;
	y := x / y;
	b := true;
	writeln('Values inside function call: ');
	writeln('t = ', t, ', x = ', x, ', y = ', y, ', i = ', i, ', b = ', b);
	writeln();
	proc;
	func := 'Returned';
end;
begin
	{ Assignment Statements}
	writeln('Some assignment statements were done');
	writeln();
	x := 10; a[3] := 4;	 {2 statements in 1 line}
	y := 2 * (x + 2) / 4 - abc mod a[3]; {long expression}
	write('write() test:');
	write('Hello', ' ', 'World! '); { Hello world print test }
	writeln();
	writeln();
	writeln('Data literal printing test:');
	writeln(23, ' ', true, ' ', 'c', x);
	writeln();
	writeln('Expression printing test:');
	writeln(x + y / a[3], ' ' , (x = 10) and ('qwerty!' > qwe));
	writeln();
	writeln('Array accessing in for loop inside if-then test:');
	if a[3] <= 4 then
		for z := -3 to 4 do
		begin
			writeln('a[', z+1, ']: ', a[z+1]);
		end;
	writeln();
	writeln('Else statement: ');
	if (false) then
	begin
		writeln('Else failed!');
	end
	else
	    writeln('Else passed!');
	    
	writeln();
	writeln('Input test:');
	write('Input a char, string, and int in order: ');
	readln(c, s, x);
	{ write('This shouldn't print');
	  writeln('Neither should this');
	  x := 0;  y := 0;
	}
	writeln('Here they are: ', c, ', ', s, ', ', x);
	writeln();
	writeln('Values before function call:');
	writeln('x = ', x, ', y = ', y, ', z = ', z, ', b = ', b);
	writeln();
	writeln('Status: ', func(x, y, 'parameter')); { func call as parameter }
	writeln;	{ func call without parentheses }
	writeln('Values after function call:');
	writeln('x = ', x, ', y = ', y, ', z = ', z, ', b = ', b);
	writeln()				{ no semicolon last statement }
end.
