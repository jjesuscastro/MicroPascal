{This program gets a number as an input and checks if it is a positive or a negative value.}

PROGRAM posneg;
uses crt;
var 
 num : integer;
BEGIN
 clrscr;
  write('Enter a number:');
  readln(num);
  if (num > 0) then
   writeln('You enter Positive Number')
  else
    if (num < 0) then
     writeln('You enter Negative number')
    else
      if (no = 0) then
      writeln('You enter Zero');
  readln;
END.