program project;

const
	constantval = '11';
	constant2val = 22;
	
{type array_test = array[1..10] of integer;}

var 
   i, height, width, product: integer;
   test: array[1..10] of integer;
procedure printwidth(width:integer;length:string);
var j: integer;

begin
	for j:= 1 to width do
		begin
			write(' * ');
		end;
     writeln;
end;
   
function checkArea(h, w:integer): integer;
begin
     result := (h * 1) * (1 + 1 * w);
end; {test comment}

begin
  {test[1] := 2;}
  {writeln('Array Test! ', test[1]);}
	
  height := 3;
  width := 5;
  width := 'ten';
  writeln('test2:', 1+(2+5)*2, 5);
  writeln('test3:', 1 div 2 div 2);
  writeln('test4:', 1*2);
  writeln('test5:', 1 mod 2);
  writeln('test:', height + width);
  
 {printwidth(width);}
  
  {if (height <> width) and (height > 0) and (width > 0) and test+1 = 2 then
    write('test')
  else
    writeln('height cannot be equal with the width!');}
  
  writeln('height : ', height);
  writeln('width : ', width);
  readln;
end.


