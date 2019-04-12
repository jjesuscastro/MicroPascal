{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program S18_SouthSuperiority;
var 
    multiplicationResult : integer;
    section : string;
const
    runningAverage = 80;
    successMessage = 'You Perfected COMPILER';
    failedMessage = 'You will still pass COMPILER';
    
(* Arithmetic Testing *)
procedure computeResults;
Var firstScore, secondScore: integer;
    begin
        section := 'computeResults';
        writeln(section);
        firstScore := 80;
        secondScore := 90;
        multiplicationResult := firstScore + secondScore + 90 * 2;
        
        write('multiplication Result average: ');
        writeln(multiplicationResult);
    end;
(* Loop Testing *)
function loopResults() : integer;
var finalValue, itr : integer;
    begin
        section := 'loopResults';
        writeln(section);
        finalValue := -80;
        for itr := 1 to runningAverage do
            finalValue := finalValue + 1;
        loopResults := finalValue
    end;
    
(*Conditional Statements *)
function checkResults() : boolean;
var checker : boolean;
    begin
        section := 'checkResults';
        writeln(section);
        if(multiplicationResult > runningAverage) then
            checker := true
            else
                checker := false;
        if(checker) then
            writeln(successMessage)
            else
            write(failedMessage);
        checkResults := checker;
    end;
    
(*Created by Lallave, Pensica, Sanchez for CMPILER MP Testing*)
begin
  section := 'S18';
  writeln ('Starting Program...', section);
  computeResults;
  checkResults();
  writeln(loopResults());
  writeln ('Ending Program...', section);
end.
