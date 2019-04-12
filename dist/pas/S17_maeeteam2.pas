program exFunction;
var
   a, k, b, result, ret : integer;

(*function definition *)
function power(num1, num2: integer): integer;
var
   (* local variable declaration *)
   result: integer;
begin
   result := num1;
   for k:= 1 to (num2-1) do
      result := result * num1;
        
   power := result;
end;

begin
   a := 5;
   b := 2;
   ret := power(a, b);
   
   writeln( a,' to the power of  ', b, ' is ', ret );
end.