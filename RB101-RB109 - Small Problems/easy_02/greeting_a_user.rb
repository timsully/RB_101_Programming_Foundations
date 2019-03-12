=begin
Write a program that will ask for user's name. The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.

PEDAC, Breaking down the Problem:

Inputs:
  - Program asks for users name

Outputs:
  - Then greets the user, if there is an exclamation point at the end of the name
    then the computer yells back to the user, if not return the string "Hello Bob."

  rules:
    - 

Implicit Rules:
  - 

Clarifying Questions?
  - Will we need to use a conditional statement


Mental Model:
Program asks for users name and then greets the user. If there is an exclamation
point at the end of the string then return the following string in all caps:
"HELLO BOB. WHY ARE WE SCREAMING?"




Examples/Test Cases
------------------------
Example 1

Input
  - What is your name? Bob
    
Output
  - Hello Bob.
------------------------

------------------------
Example 2

Input
  - What is your name? Bob!

Output
  - HELLO BOB. WHY ARE WE SCREAMING?
------------------------
=end
print "What is your name? "
name = gets.chomp

if name.match('!')
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end