=begin
Build a program that randomly generates and prints Teddy's age. To get the age, 
you should generate a random number between 20 and 200.

PEDAC, Breaking down the Problem:

Inputs:
  - nothing to input, program runs a method to generate random number

Outputs:
  - Output a string that that states how old teddy is between 20..100
    "Teddy is x years old!"

Implicit Rules:
  - 

Clarifying Questions?
  - Will I be creating a method to call with no argument to trigger this program?

Mental Model:



Examples/Test Cases
------------------------
Example Output

Output
 Teddy is 69 years old!
------------------------
=end
# Generate a random number between 20..200
a = rand(20..200)

puts "Teddy is #{a} years old!"