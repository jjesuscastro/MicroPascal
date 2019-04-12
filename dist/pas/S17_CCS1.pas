(*
    1. Input and Output
    2. Data Types
    3. Variables
    4. Constants
    5. Case Sensitivity
    6. Comments
    7. Arithmetic operators
*)

program firstTests;
var
x, y, z : integer;
c       : char;
s       : string;
b       : boolean;

const
ADD = 5;
out = 'meow';

{
    1. Input and Output
}
procedure inputOutput;
var
i : integer;
    begin
        writeln('Check Input and Output');
        write('input an integer: ');
        readln(i);
        writeln('i: ', i);
        
        writeln;
    end;

{
    2. Data Types
    3. Variables
    5. Case Sensitivity
}
procedure dataTypes;
    begin
        writeln('Check Data Types, Vriables, and Case Sensitivity');
        
        x := 5;
        y := -1;
        z := +7;
        c := 'p';
        s := 'Will I pass CMPILER?';
        b := true;
        
        writeln('x: ', X);
        writeln('y: ', y);
        writeln('z: ', Z);
        writeln('c: ', c);
        writeln('s: ', S);
        writeln('b: ', b);
        
        writeln;
    end;

{
    4. Constants
    Assignments
}
procedure constants;
    begin
        writeln('Check Constants');
        x := ADD + 2;
        writeln('x: ', x);
        writeln;
          
        s := out;
        writeln('What is s? ', s);
    end;

{
    7. Arithmetic Operations
    ( ) Grouping
    * Multiplication, / Division, % Modulo
    + Addition, - Subtraction 
}
procedure arithmetic;
var
i, j, k, l: integer;
    begin
        writeln('Check Arithmetic Operations');
        x := 1;
        
        y := x + 1; {Answer: 2}
        z := x - 1; {Answer: 0}
        i := x * 2; {Answer: 2}
        j := 9 div 3;
        k := 5 mod 3;
        l := (1 - 2) div 3 - ((2*2) mod 2) + 4 * 2; 
        
        writeln('y - addition: ', y);
        writeln('z - subtraction: ', z);
        writeln('i - multiplication: ', i);
        writeln('j - division: ', j);
        writeln('k - modulo: ', k);
        writeln('l: ', l);
        
        writeln;
    end;


begin
  inputOutput;
  dataTypes;
  constants;
  arithmetic;
end.

