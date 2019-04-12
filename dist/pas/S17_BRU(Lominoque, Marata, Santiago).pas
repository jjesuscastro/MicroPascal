Program pyramid;
Uses Crt;

Var
J,K,N,M : Integer;
{J will be our counter for each line}
{K will be our counter for each character per line}
{N will be out goal number of lines}
{M will be used to centre everything} 
str1 : string;

Begin
   Writeln('How many lines must the pyramid be: ');
   Readln(N);

   Writeln;
   M := (N);
   Writeln('*':0:m); {This places our first star at the top in the middle}
   For J := 1 to N-1 do {This is the pyramid}
      Begin
         Write('*':0:m-J); {creates the leading "*",also positioning us at the correct spot}
         For K := 1 to J do {Fills the line with 123...}
            Begin
               Write(k); 
            End;
         For K := J-1 downto 1 do {Completes the line with ...321, note becus the first line will be from 0 downto 1 nothing will happen}
            Begin
               Write(k);
            End;

         Write('*'); {Creates the trailing "*"}
         Writeln; {Takes us to the next line}
      End; 
      For K := 1 to N do {Makes the last line only stars the amount as entered at the start}
      Begin
         Write('*'); 
      End;

   Writeln;
   Writeln('Press any key to exit program');
   Readln;
End;