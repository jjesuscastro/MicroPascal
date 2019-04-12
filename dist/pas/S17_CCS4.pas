{This program is a simple implementation of Bubble sort in Pascal language, with an error}

program Bubble;

VAR
    A : array [1..3] of integer;
    c, d, t : integer;

begin
    A[1] := 19;
    A[2] := 3;
    A[3] := 15;

    for c := 1 to 3 - 1 do
        for d := 1 to c do
            if A[d] > A[d+1] then begin
                t := A[d];
                A[d] := A[d + 1];
                A[d + 1] := t;
            end;
                
    for c := 1 to 3 do
        writeln(A);
    
	{TRYING TO BREAK YOUR{ } 
    { PROGRAM }	
end.

