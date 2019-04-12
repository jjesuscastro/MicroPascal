PROGRAM Part10;
CONST
   PI = 3.14;
VAR
   number                  : INTEGER;
   a, b, c, d, y, x, k, f, i     : INTEGER;
   y                       : REAL;
   word, gammer            : STRING;
   m, z, grammer           : BOOLEAN;

   procedure AlphaA(a : integer; x : integer);
         var y : integer;
      begin { AlphaA }
         x := a + x + y;
      end;  { AlphaA }

   procedure AlphaB(a : integer);
         var b : integer;
      begin { AlphaB }
         x := a;
      end;  { AlphaB }

BEGIN {Part10}
   BEGIN
      number := 2;
      word := 'hello';
      grammer := word;
      a := number;
      b := 10 * a + 10 * number DIV 4;
      c := a - - b;
      m := b >= 30;
	   j := PI + 3;
   END;

   readln(x);
   writeln(x);

   writeln(PI);

   IF (a < 20 AND b < 30) THEN
      BEGIN 
      k := 100;
      c := 25;
      END;

   IF (a > 20 AND b < 30) THEN
      BEGIN 
      g := 50;
      f := 90;
      writeln(a);
      END
   ELSE
      BEGIN
      f := 30;
      END;

   FOR i := 1 TO 10 DO 
      BEGIN
      write(i);
      END;

   x := 11;
   d := 11;
   y := 20 % 7 + 3.14;

END.  {Part10}