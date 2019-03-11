=begin
Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary. If the boolean is true, the bonus
should be half of the salary. If the boolean is false, the bonus should be 0.

PEDAC, Breaking down the Problem:

Inputs:
  - method takes two arguments, a positive int value and a boolean

Outputs:
  - calculate bonus for the given salary


Clarifying Questions?
  - 


Mental Model:

Create a method that takes in two arguments, a positive integer and a boolean
value and the methods body will calculate the bonus for the given salary which
is the integer value passed into the method. If the boolean value is true, the 
bonus should be half of the salary. If it's false, the bonus should be 0.


Examples/Test Cases

------------------------
Example 1

Input
  - calculate_bonus(2800, true) == 1400

Output
  - return bonus value
------------------------

------------------------
Example 2

Input
  - calculate_bonus(1000, false) == 0

Output
  - return 0
------------------------

------------------------
Example 3

Input
  - calculate_bonus(50000, true) == 25000

Output
  - return bonus value
------------------------
=end

def calculate_bonus(int, boolean)
  # calculate the bonus for a given salary
  # if true, bonus is half the salary
  if boolean == true
    int / 2
  else boolean == false
    # if false, bonus is 0
    return 0
  end
end

# Examples should print true
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000