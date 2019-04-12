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
//  n1	 : array [1..5] of char;

// These are possible errors
  // A	 : integer;		// ERROR: Duplicate identifier 'a'
  // number : integer;		// this could be an error due to the restriction
  // chr    : char;		// this could be an error due to the restriction
  // stmt   : string;		// this could be an error due to the restriction
  // e	 : integer; 		// ERROR: Duplicate identifier
  // h	 = string;		// ERROR: Syntax error, ":" expected but "=" found
  // q	:= integer;		// ERROR: Syntax error, ":" expected but ":=" found
  // f	:= 'hello';		// ERROR: Syntax error, ":" expected but ":=" found



const
  MX = 40;
  H1 = 'hello';
  Ca2 = 'Q';
  b1f = FALSE;
  b2f = false;
  b1t = TRUE;
  b2t = true;
  f = 'This is a string';

  // These are possible errors
  //b2 = TRUE;			// ERROR: Duplicate identifier "b2"
  //aKoH2 = 'This is me';		// this could be an error due to the restrictions
  //a@k = 'aak';			// ERROR: Syntax error, ":" expected but "@" found
  //err : 10;			// ERROR: Syntax error, "=" expected but ":" found
  //err := 10;			// ERROR; Syntax error, "=" expected but ":=" found
  //1as = 10;			// ERROR: Syntax error, "identifier" expected but "ordinal const" found
  //err = hello;			// ERROR: Syntax error, "." but ";" found


(*Comments:
  1. Single and multiline comments
*)

(*This is a comment hehe
   comment hehe
   comment hehe*)
   {this is
   multi-line}
   { Comment 1 (* comment 2 *) }  
    (* Comment 1 { comment 2 } *)  
    { comment 1 // Comment 2 }  
    (* comment 1 // Comment 2 *)  
    // comment 1 (* comment 2 *)  
    // comment 1 { comment 2 } 



procedure assignStuff();
const a = 'hello'; 		 

var Ca2 : integer;

begin
  
  a1	 := +1;
  b	 := 1;
  c	 := 'C';
  c1	 := '`';
  d	 := 'C';		//this is a string
  d2	 := 'This is d2' ;
  e	 := true;
  //n1	 := 'hello';

  //updating values
  d2     := d;
  b 	 := a1;
  a1	 := -2;
  c1	 := 'c';
  d2     := 'Changed';
  d2	 := 'c' + 'c';
  e1	 := not(MX < 100);
  a1	 := b + a1;					
  b 	 := (3 + 4) div 8 - ((1*2) mod 2) -2 + 6 * 2; 	
 
  writeln('Assigning');
  writeln('a1 is ', a1);				//a1 is -1
  writeln('b is ', b);					// b is 10 
  writeln('c1 is ', c1);				// c1 is c  
  writeln('d2 is ', d2);				// d2 is cc
  writeln('e1 is ', e1);				// e1 is true
  

  //These are possible errors
  
  //b	 := 10.1 + a1;					// ERROR: incompatible types: got "Extended" expected "SmallInt"
  //a      := -1; 					// ERROR: Variable identifier expected; Incompatible types: got "ShortInt" expected "Constant String"
  //a	 := 2.13;					// ERROR: Incompatible types: got "Extended" expected "SmallInt"
  //d1	 := 'this is more than 10 characters hehe';	// WARNING: String literal has more characters than short string length
  //c1     := 'This is wrong';				// ERROR: Incompatible types: got "Constant string" expected "char"
  //e	 := 2;						// ERROR: Incompatible types: got "ShortInt" expected "Boolean"
  //H1	 := 'Bawal';					// ERROR: Variable identifier expected

 
end;

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

{// these are errors
//these are errors and warnings

procedure paramPass(y: integer; x: string)		// ERROR: Syntax error: ";" expected but "BEGIN" found
begin
  writeln('y is', y);
  writeln('x is ', x);
end;

function paramPass(y: integer, x:string): integer;	//ERROR: Syntax error: ")" expected but "," found
begin
    paramPass := y
end;

procedure paramPass(y: integer);	// ERROR: Overloaded functions have the same parameter list
var temp : string;
var f : integer;
begin
   Writeln();
   writeln();
   Writeln('temp is ', temp);		//WARNING: Local Variable 'temp' does not seem to be initialized
   writeln('f is ', f);			//WARNING: Local Variable 'f' does not seem to be initialized
   writeln('[Procedure] Y is: ', y);
   Writeln;
   writeln;
   
end;

procedure procError(y: integer);	// ERROR: Syntax error; got "." expected ";"
var temp : string;
var f : integer;
var chr : char;
begin
   f := 0;
   temp := 'csknvkj';
   chr := 'n';
   temp := chr;
   chr := temp;
   Writeln('temp is ', temp);
   writeln('f is ', f);
   writeln('[Procedure] Y is: ', y);
   Writeln;
   writeln;
   
end.

procedure procError2(y: integer): string;	// ERROR: Fields cannot appear after a method or property definition, start a new visibility section first
var temp : string;
begin
   Writeln();
   writeln();
   writeln('[Procedure] Y is: ', y);
   Writeln;
   writeln;
   temp := 'This is temp';
   procError := temp;				// ERROR: Syntax Error: ";" expected but "identifier PROCERROR" found
end;

function funcError(y: integer);			// ERROR: Syntax Error: ":" expected but ";" found
begin
    write('hi');
end;

}


function conditionalFunc(par:string): char;
var str : string ;
var user : string;
var num1, num2 : integer;
begin
  str := 'pare chong';
  write('Input num1: ');
  readln(num1);
  write('Input num2: ');
  readln(num2);

  if num1 = num2 then
     writeln('They are equal')
  else
     writeln('They are not equal');

  if (num1 = num2) then
     writeln('They are equal')
  else
     writeln('They are not equal');

  if (num1 > num2) then
     writeln('Num1 is greater than num2')
  else
     writeln('Num1 is NOT greater than num2');

  if (num1 < num2) then
     writeln('Num1 is less than num2')
  else
     writeln('Num1 is NOT less than num2');

  if (num1 >= num2) then
     writeln('num1 >= num2')
  else
     writeln('!(num1 >= num2)');

{//these are errors

  // this is an error
  if (num1 <= num2) then
     
     writeln('num1 <= num2')
  
  else
     
     writeln('!(num1 <= num2)')

  if ((par = str) and (par <> 'c')) then
    // ERROR: Syntax Error: ";" expected but "IF" found 
     writeln('par is pare chong')
  
  else
     writeln('meh');
  

  //this is an error
  if (num1 <= num2) then
     writeln('num1 <= num2');		    // ERROR: Syntax error: ";" expected but "ELSE" found
  else
     writeln('!(num1 <= num2)')


}




  // and, or, not
  if ((par = str) and (par <> 'c')) then
     writeln('par is pare chong')
  else
     writeln('meh');

  if (par = str) and (par <> 'c') then
     writeln('par is pare chong')
  else
     writeln('meh');


  if (not(par = 'pare chong') or not(par = 'par')) then
     writeln('par is in if')
  else
     writeln(f);

  if not(par = 'pare chong') or not(par = 'par') then
     writeln('par is in if')
  else
     writeln(f);

  writeln(not(true) and true);
  writeln(true and false);
  writeln(false or true);

  {
  //these are errors
  if par = str and par <> 'c' then		// ERROR: Operation "and" not supported for types "ShortString" and "ShortString"
     writeln('par is pare chong')
  else
     writeln('meh');
  }

  writeln('Please input how you call your friend:');
  readln(user);

  if (user <> str) then
  begin
     writeln('Thats cool :/');
     conditionalFunc := 'n';
  end
  else
  begin
     writeln('Awesome pare chong ;)');
     conditionalFunc := 'y';
  end;

  {
  // this is an error
  if (user <> str) then
  begin
     writeln('Thats cool :/');
     conditionalFunc := 'n';
  end;
  else						// ERROR: Syntax Error: ";" expected but "ELSE" found
  begin
     writeln('Awesome pare chong ;)');
     conditionalFunc := 'y';
  end;

  }

end;



(*
  Iterative construct
  - for loop upward count only
  - no nested loops

  Array
  - array of numbers only
  - index starts at 1
*)

procedure printArray();
var arr : array [1..5] of integer;
var arr2 : array [1..10] of integer;
var i,j : integer;
begin      
   for i := 1 to 5 do
       arr[ i ] := i + 100;   
   
   for j:= 1 to 5 do
      writeln('arr[', j, '] = ', arr[j] );
   
   for i := 1 to 10 do
       n[ i ] := i + 1;   

   for i:= 1 to 10 do
      writeln('n[', i, '] = ', n[i] );

   // This is not a syntax error but it is a logical error, because garbage value arr2[6] onwards

   for i := 1 to 5 do
       arr2[ i ] := i + 2;  

   for i:= 1 to 10 do
      writeln('arr2[', i, '] = ', arr2[i] );

   writeln();
   Writeln;
end; 






var blah : integer;
//var ye : string;


var chr : char;

BEGIN {MAIN}
  assignStuff();
  blah := 5-2;
  paramPass(5);
  paramPass(blah);
  writeln(paramPass1(2));
  writeln(printSomething());
  paramPass2(MX, f);
  writeln(takeBool(9));
  chr := conditionalFunc('pare chong');
  writeln(chr);
  printArray();
END.  {MAIN}
