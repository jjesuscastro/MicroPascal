program MAIN;

var n	 : array [1..10] of integer;

const f = 'print this f';


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


var chr : char;

BEGIN {MAIN}
  chr := conditionalFunc('pare chong');
  writeln(chr);
  printArray();

END. {MAIN}