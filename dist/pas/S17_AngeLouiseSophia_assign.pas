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


var chr : char;

BEGIN {MAIN}
  assignStuff();

END.  {MAIN}
