PROGRAM S17_GROUP1;
VAR
   a : INTEGER;
   f : INTEGER;
   b : INTEGER;
   y : INTEGER;
   c : BOOLEAN;  
   d : BOOLEAN; 
   e : BOOLEAN; 
BEGIN {Part12}
   a := 10  MOD 3;
   c := TRUE AND TRUE AND FALSE;
   d := FALSE OR TRUE AND FALSE;
   e := TRUE AND NOT FALSE;
   y := 0;
   
   if (a < y) then
        b:= 100;
    else
        b:= 20;
    

   FOR f:= 1 TO 10 DO y:=y+1;
END. 