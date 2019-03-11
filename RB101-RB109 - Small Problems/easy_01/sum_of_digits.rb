=begin
Write a method that takes one argument, a positive integer, and returns 
the sum of its digits.

PEDAC, Breaking down the Problem:

Inputs:
  - a method that takes in one argument that is a positive integer

Outputs:
  - returns the sum of the digits in the positive integer given

Mental Model:

Create a method that takes in one argument which is a positive integer 
and returns the sum of its digits. As the integer is passed into the method,
split the numbers up and then add them together and return the result of the
sum of the arguments digits


Examples/Test Cases

Validation
* Note that we derive our examples from our rules?

------------------------
Example 1

Input
  - sum(23) == 5

Output
  - return true
------------------------

------------------------
Example 2

Input
  - sum(496) == 19

Output
  - return true
------------------------

------------------------
Example 3

Input
  - sum(123_456_789) == 45

Output
  - return true
------------------------
=end
# ["2", "3"].map(&:to_i) #=> [2, 3] is the same a below:
# ["2", "3"].map { |element| element.to_i } #=> [2, 3]


def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end


# The return value of each method
23.to_s        #=> "23"
  .chars       #=> ["2", "3"]
  .map(&:to_i) #=> [2, 3]
  .reduce(:+)  #=> 5


# Examples
puts sum(23) == 5 #=> true
puts sum(496) == 19 #=> true
puts sum(123_456_789) == 45 #=> true