(* Merged all test cases into one file. Separate each test case by program*)

program t2;

(* READLN, WRITE, WRITELN *)
Var a : integer;
	x : string;
	c : char;
begin
	x := 'Enter value for a ';
	WRITE(x);
	readln(a);
	writeln(a);

	c := 'd';

	writeln(c);
end.


program t3;

(* Data Types *)
Var a : char;
	b : string;
	c, z : integer;
	d : boolean;
begin
	a := 'a';
	b := 'sample';
	c := 9;
	d := true;
	
	writeln(a);
	writeln(b);
	writeln(c);
	writeln(d);
end.


program t4;

(* Variable *)
var a, b: integer;

procedure basicArithmetic;
var a, b: integer;
	begin
		a := 5;
		b := 10;
	end;

begin
	a := 1;
	b := 2;

	writeln(a);
	writeln(b);
end.


program t5;

(* Constant *)
const a = 10;

begin

end.


program t6;

(* Conditional construct *)
var x, y, z, m: integer; 
begin
	x := 1;
	y := 2;
	z := 3;
	
	if x < y then
	begin
		m := x
	end
	else
	begin
		m := y;
	end;

	if z < m then
	begin
		m := z;
	end;

	writeln(m);
end.


program t7;

(* Iterative construct *)
var i, x, total : integer;    
begin
	total := 0;

	readln(x);

	for i := 1 to x do
	begin
		total := total + i;
	end;

	write(total);
end.


program t8;

(* Finds the minimum of the 3 values *)
procedure findMin(x, y, z: integer; m: integer); 
	begin
	   if x < y then
	   begin
	      m := x
	   end
	   else
	   begin
	      m := y;
	   end;
	   
	   if z < m then
	   begin
	      m := z;
	   end;
	end; 

(* Finds sum from 1 to x *)
function getTotal(x: integer) : integer;
var i, total : integer;    
    begin
        total := 0;
        for i := 1 to x do
        begin
            total := total + i;
        end;
        
        getTotal := total
    end;


begin

end.


program t10;

{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}

(* Made by Bandrang, Bautista, Gerardo *)
var a : integer;
begin
	(* comment *)

	{ 
		
		multiline comment


	}	
end.


program t11;

(* Assignment*)
var a: integer;
	b: string;

begin
	a := 5;
	writeln(a);

	a := 5 + 1;
	writeln(a);

	b := 'test';
	writeln(b);

end.


program t12;

(* Arithmetic operators *)
var a, b, c, d: integer;

begin 
	a := 3;
	b := 8;
	c := 12;
	d := a + b + b;
	writeln(d);
	d := a - b;
	writeln(d);
	d := (c - 2) + (c - c) + (c - c);
	writeln(d);
	d := a * b * c;
	writeln(d);
	d := a % 2;
	writeln(d);
	d := a / 2;
	writeln(d);
end.


program t13;

(* Relational operators *)
var a, b, c, d: integer;
begin
	a := 1;
	b := 2;
	c := 3;
	d := 4;

	writeln(a = b);
	writeln(a <> b);
	writeln(b < d);
	writeln(c > b);
	writeln(b <= d);
	writeln(a >= b);
end.


program t14;

(* Boolean operators *)
var
a, b: boolean;
x, z: string;

begin
   a := true;
   b := false;

   x := 'Condition is true';
   z := 'Condition is false';

   if (a and b) then
   begin
      writeln(x)
   end
   else
   begin
      writeln(z);
   end; 
   if  (a or b) then
   begin
      writeln(x);
   end;
   
   a := false;
   b := true;
   
   if  (a and b) then
   begin
      writeln(x)
   end
   else
   begin
      writeln(z);
   end;
   
   if not (a and b) then
   begin
      writeln(x);
   end;
end.

(* Test cases with errors *)

program e1;

(* Lexical error*)
var @: char;

begin 

end.


program e2;

(* Syntax error*)
var a: integer

begin

end.


program e3;

(* Semantic error*)
var a: integer;
	b: string;
	c: boolean;

begin
	a := 3;
	b := 'ok';

	c := a + b;

end.

