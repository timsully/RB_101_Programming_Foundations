=begin
Problem:
Write a method that takes two arguments, a string and a positive integer, and 
prints as many times as the integer indicates.

PEDAC, Breaking Down the Problem:

Inputs:
  - takes two arguments
  - a string and a positive integer


Implicit Rules:
  - none that i could find?


Outputs:
  - prints string as many times as the integer indicates


Mental Model:
Create a method that takes two arguments. The first argument being the string,
and the second argument being an integer. The integer will be the indicator of
how many times the string argument will print.


Examples / Test Cases

Validation
* Note that we derive our examples from our rules

------------------------
Example 1

Inputs
  - String: "Hello"
  - Integer: 1

Output
  - "Hello"
------------------------

------------------------
Example 2

Inputs
  - String: "Hello"
  - Integer: 2

Output
  - "HelloHello"
------------------------


=end

def repeat(string, int)
  return string * int
end

repeat('Hello', 1) #=> Hello
repeat('Hello', 2) #=> HelloHello
repeat('Hello', 3) #=> HelloHelloHello