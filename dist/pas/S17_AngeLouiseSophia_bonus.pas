program main;
Var
 i, x, z, varOne : Integer;
 concatString: string;
 myIntArray : Array[1..5] of Integer;
 myBoolArray : Array[1..5] of Boolean;
 myCharArray : Array[1..5] of Char;
 myStringArray : Array[1..5] of String;
 hi: boolean;

Const
   aConstant = 123;

procedure procTest2(y: integer);
begin
   writeln('In procTest2, y is: ', y);
end;

procedure procTest1(x: integer);
begin
   writeln('In procTest1, x is: ', x);
   procTest2(x);
end;

function funcTest2(): char;
begin
   writeln('In funcTest2, return is i');
   funcTest2:= 'i';
end;

function funcTest1(y: char): string;
var temp:char;
begin
   temp:=funcTest2();
   writeln('In funcTest2, return is h and ', temp);
   writeln('*This is also a test case for char + char = string');
   funcTest1:= 'h' + temp;
end;

Begin
 writeln('----- Array of Different Data Types -----');
    hi:=true;
 For i := 1 to 5 do
 Begin
  myIntArray[i] := i;
  myStringArray[i] := 'hello';
  hi:=NOT(hi);
  myBoolArray[i] := NOT(hi);
  myCharArray[i] := 'a';
  
  writeln(myIntArray[i], ' ', myStringArray[i], ' ', myBoolArray[i], ' ', myCharArray[i]);
 End;

 writeln();
 writeln('----- Iterative Statements w/ Nested Loops -----');
    writeln('----- For Loop -----');
  for x:= 10 downto 5 do
     writeln(x);

writeln('----- For Loop with DOWNTO -----');
  for x:= 5 downto 1 do
     writeln(x);

writeln('----- Nested For Loop -----');
for x:=5 downto 1 do
begin
   for z:=3 downto 1 do
   begin   
      writeln(x, z)
   end;
end; 

writeln();
writeln('----- While Loops -----');
x:=5;
while x>0 do
begin
   writeln('In While Loop Descending ', x);
   x:=x-1;
end;

writeln();

x:=0;
while x<5 do
begin
   writeln('In While Loop Ascending ', x);
   x:=x+1;
end;

writeln();

writeln('----- Nested While Loop -----');
x:=0;
while x<3 do
begin
   z := 3;
   while z > 0 do
   begin   
      writeln('In Nested While Loop ', x, ' ', z);
      z := z-1;
   end;
   x:=x+1
end; 

writeln();
writeln('----- Repeat-Until Loops -----');
x:=5;
repeat
   x := x - 1;
   writeln('Repeat-Until is working descending ', x);
until x = 0;

x:=0;
repeat
   x := x + 1;
   writeln('Repeat-Until is working ascending ', x);
until x = 5;

writeln('----- Nested Repeat-Until Loop -----');
x:=5;
repeat
z  :=5;
   repeat
      begin
         writeln('Repeat-Until (inner loop) is working nested z is ', z);
         z := z - 1;
      end;
   until z = 0;
   x := x - 1;
   writeln('Repeat-Until (outer loop) is working x is ', x);
until x = 0;

writeln();
writeln('----- Nested Procedures -----');
procTest1(8);

writeln();
writeln('----- Nested Functions -----');
writeln('Full output is: ', funcTest1('a'));

writeln();
writeln('----- Removed Limits for Variable and Constant Names -----');
varOne:=5;
writeln('varOne is ', varOne);
writeln('aConstant is ', aConstant);

writeln();
writeln('----- String Concatenation -----');
concatString := 'hello';
writeln('concatString is ', concatString);
concatString := concatString + ' there';
writeln('concatString is ', concatString);

End.