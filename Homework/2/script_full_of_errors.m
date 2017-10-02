a = 2; 
%{
1a is an invalid syntax form in matlab. 
Variables always start with letters, not numbers. 
%}
a1 = 6;
%{
B is an undefined variable which cannot give a1 a value.
%}
x = 2;
y = x + 4; % is it 6? - no because we were using an uppercase x
%{
Matlab is cased sensitive and therefore x isn't the same as X. They are two separate
variables.
%}
pi = 4 * atan(1);
%{
The expression pi = 4 *; atan(1); is incomplete. The first ; marks the
first end of the line, however it is incomplete since 4 isn't being multiplied with anything.
%}
disp(pi)
pi = '3.14159';
%{
The initalization of the characters aren't terminated properly. At the front
of the characters there are double quotes, however, at the end of the characters there are single quotes.
%}
disp(tan(str2double(pi)));
%{
The arguments for the function tan(x) requires that x is a double. Since
pi is defined as a character, the tan function cannot execute properly.
%}
c = 4^3^2^3;
e = ((c-78564)/c + 32);
%{
The input character is not valid. The variable here is a whitespace, which
improper syntax for naming a variable in Matlab. There is also an
unbalanced number of parenthesis in the expression (one extra at the end).
%}
year = 2017;
disp(['The year is ' num2str(year)]); % does it display 2017 correctly? -no returns the ascii value of 2017
%{
In order for the number to print as a string without changing to its ascii
value, we add a matlab defined function num2str(<number>).
%}
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1);
%{
The array index starts from 1, not 0
%}
last = stuff(5);
%{
End is a keyword in matlab and therefore is reserved for another purpose.
It cannot be used as a variable name.
%}
discount = .12;
%{
The % symbol comments information after it. Therefore, the semi-colon is
commented and gives us a warning that in order to prevent the interperator
from printing the value of discount in the command window, there needs to be
a semi-colon.
%}
AMOUNT = 120.;
%{
The expression is incomplete. There needs to be a number on either side 
of the subtraction symbol, however, 120 is not being subtracted by anything.
%}
amount = 120;
%{
The dollar sign after the 120 makes the varible have an invalid value.
The character is appended to the double which breaks the syntax rule for a
double.
%}
and = 'duck';
%{
duck is an undefined variable and therefore and is undefined. Therefore, you make it a concatination of
characters
%}
class = 'INF1100, gr 2';
%{
The character vector is not properly defined. There are single quotations
in the beginning, but double quotations at the end (which are used to
define strings).
%}
continue_ = x > 0;
fox = false;
%{
The value of fox is defined as false, but we are using the equality symbol
which instead compares the two values. 
%}
wolf = fox == true;
Persian = ['Persian' ' is ' 'a' ' human ' 'language']; %array
Spanish = {'Spanish ' 'is ' ' another'  'language'}; %cell array
%{
There is an unbalanced number of open parenthesis and close parenthesis.
%}
disp([Persian(1:7) ' is not the same as ' Spanish{1}]);
