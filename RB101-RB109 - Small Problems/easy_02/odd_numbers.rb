=begin
Print all odd numbers 1 to 99, inclusive. All numbers should be printed
on separate lines.

PEDAC, Breaking down the Problem:

Inputs:
  - 

Outputs:
  - 

  rules:
    - 

Implicit Rules:
  - 

  Integer:


Clarifying Questions?
  - 


Mental Model:





Examples/Test Cases
------------------------
Example 1

Input
  - an inclusive array of [1..99]

Output
  - Return all odd numbers from 1-99, each on their own line.
------------------------
=end
value = 1

while value <= 99
  puts value
  value += 2
end

# 1.upto(99) { |i| puts i if i.odd? }