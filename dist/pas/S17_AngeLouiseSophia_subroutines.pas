{
Instructions:
Comment out an error if you want to try other test cases.
}

PROGRAM MAIN;

VAR
  a, b   : integer;
  a1	 : iNtEgEr;
  c	 : char;
  c1	 : Char;
  d	 : string;
  d2	 : String;
  e	 : boolean;
  e1	 : Boolean;
  n	 : array [1..10] of integer;
  b2     : string;
  n1	 : array [1..5] of char;


const
  MX = 40;
  H1 = 'hello';
  Ca2 = 'Q';
  b1f = FALSE;
  b2f = false;
  b1t = TRUE;
  b2t = true;
  f = 'This is a string';


procedure paramPass(y: integer);
var temp : string;
var f : integer;
begin
   f := 255;
   temp := 'this is a string';
   Writeln();
   writeln();
   Writeln('temp is ', temp);
   writeln('f is ', f);
   writeln('[Procedure] Y is: ', y);
   Writeln;
   writeln;
   
end;

function paramPass1(y: integer): integer;
begin
    paramPass1 := 10;
end;

function printSomething(): string;
begin
  printSomething := 'I just wanted to print something';
end;

procedure paramPass2(y: integer; x: string);
begin
  writeln('y is', y);
  writeln('x is ', x);
end;



function takeBool(y:integer): string;
begin
   writeln('inside takeBool, y is: ', y);
   takeBool := 'this is a test';
end;

var blah : integer;
//var ye : string;

BEGIN {MAIN}
  blah := 5-2;
  paramPass(5);
  paramPass(blah);
  writeln(paramPass1(2));
  writeln(printSomething());
  paramPass2(MX, f);
  writeln(takeBool(9));
END.  {MAIN}
