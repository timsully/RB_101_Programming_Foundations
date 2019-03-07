=begin
Write a method that takes one argument, a positive integer, and returns 
a list of the digits in the number.

PEDAC, Breaking down the Problem:

Inputs:
  - method takes one argument, which is a positive integer

Outputs:
  - returns an array of numbers
  - returns a list of digits in the number

  rules:
    - 

Implicit Rules:
  - returns a list of digits in the number



Clarifying Questions?
  - What exactly is this list of numbers comprised of? An array, hash?
  - What can a list of numbers be in ruby?
  - What methods do I need to explore to return a list of digits from the number provided?
  - 


Mental Model:

Write a method that takes one argument as its parameter which is a positive
integer and returns a list of the digits in the number.


Examples/Test Cases

Validation
* Note that we derive our examples from our rules?

------------------------
Example 1

Input
  - 1

Output
  - returns an array: [1]

------------------------

------------------------
Example 2

Input
  - 12345

Output
  - returns an array: [1, 2, 3, 4, 5]

------------------------

------------------------
Example 3

Input
  - 7

Output
  - returns an array: [7]

------------------------

------------------------
Example 4

Input
  - 375290

Output
  - returns an array: [3, 7, 5, 2, 9, 0]

------------------------

------------------------
Example 5

Input
  - 444

Output
  - returns an array: [4, 4, 4]

------------------------
=end

# Convert a number to a list of its digits
def digit_list(nums)
  # Convert number to a string and then split into an array of numeric characters
  nums.to_s.chars.map(&:to_i)
end

# Examples
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true