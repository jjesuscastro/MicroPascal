program checkOddEven;
var
   input : integer;

begin
write('Input number: ');
readln(input);

if (input mod 2 = 0) then
    writeln(input, ' is even.')
    
else
    writeln(input, ' is odd.');
end.