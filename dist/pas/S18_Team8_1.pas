(*Check whether the score passes or fails*)

program PassOrFail;

type array1 = array [0..24] of Integer;
var actualMark: Integer;
var possibleMark: Integer;
var percentageMark: Integer;
var x: Integer;

const constant = 12;

begin {PassOrFail}
    writeln('1 * (1 + 5) * 5 = ', 1 * (1 + 5) * 5);
    writeln('Actual Mark: ', actualMark);
    writeln('Possible Mark: ', possibleMark);
    writeln('Pecentage Mark: ', percentageMark);
    writeln('[Pass or fail checker]');
    write('Please type your score: ');
    readln(actualMark);
    
    write('Please type the total number of items in the exam: ');
    readln(possibleMark);
    
    percentageMark := (actualMark / possibleMark) * 100;
    writeln('You scored: ', percentageMark);
	
    // boolean operator test
    if (true) then
    	writeln('true works');   
    
    if (not false) then
    	writeln('false works');   

    if (percentageMark >= 60) then
        begin
            writeln('Pass');
        end
    else 
        begin
            writeln('Fail');
        end;
    {endif}
    
    for x:= 1 to 24 do
    	begin
            writeln(array1[x]);
        end;
	
	writeln('testing constant: ', 'string' + constant);
	
end. {PassOrFail}