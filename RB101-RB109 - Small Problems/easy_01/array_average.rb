=begin
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. The array will never
be empty and the numbers will always be positive integers.

PEDAC, Breaking down the Problem:

Inputs:
  - method that takes one argument, an array containing integers

Outputs:
  - returns the average of all numbers in the array

  rules:
    - array will never be empty and the numbers will always be positive integers

Mental Model:

Write a method that takes one argument which is an array containing positive 
integers and add up all the integers in the array and then divide by how many 
numbers are in the array to get the average which should return a boolean value
of true back as test cases are passed in.


Examples/Test Cases

------------------------
Example 1

Input
  - average([1, 5, 87, 45, 8, 8]) == 25

Output
  - return true
------------------------

------------------------
Example 2

Input
  - average([9, 47, 23, 95, 16, 52]) == 40

Output
  - return true
------------------------

=end

def average(avg)
  # adds up the integers
  sum = avg.inject(0) {|result, element| result + element}
  # divide sum of array by how many numbers there are to get mean
  sum / avg.length
end

# Examples
puts average([1, 5, 87, 45, 8, 8]) == 25 #=> true
puts average([9, 47, 23, 95, 16, 52]) == 40 #=> true