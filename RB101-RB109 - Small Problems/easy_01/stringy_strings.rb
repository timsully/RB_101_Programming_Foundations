=begin
Write a method that takes one argument, a positive integer, and returns a string
of alternating 1s and 0s, always starting with 1. The length of the string should
match the given integer.

PEDAC, Breaking down the Problem:

Inputs:
  - takes one argument, a positive integer

Outputs:
  - returns a string of 1s and 0s based off integer value passed into method

  rules:
    - always starts with 1
    - length of string should match the given integer

Implicit Rules:
  - Print 1 first and then 0. So 10101010.


Clarifying Questions?
  - 


Mental Model:

A method that passes in an integer value and based off that integer value passed
into the parameter it will print out x amount of 1s and 0s.



Examples/Test Cases

------------------------
Example 1

Input
  - puts stringy(6) == '101010'

Output
  - return boolean value of true
------------------------

------------------------
Example 2

Input
  - puts stringy(9) == '101010101'

Output
  - return boolean value of true
------------------------

------------------------
Example 3

Input
  - puts stringy(4) == '1010'

Output
  - return boolean value of true
------------------------

------------------------
Example 4

Input
  - puts stringy(7) == '1010101'

Output
  - return boolean value of true
------------------------
=end


def stringy(binary)
  # iterate 1s and 0s until length of integer value
  # while binary.length, generate 10101010 with each method\
  # if odd print 1 if even print 0
  
  while binary.length
    # print 1 if odd
    if binary % 2 == 0
      puts "1"
    else
      puts "0"
    end
    # print 0 if even
    # concatenate in the end
  end
end
# binary.times { |i| print i }


# Test Cases
puts stringy(6) == '101010'    #=> true
puts stringy(9) == '101010101' #=> true
puts stringy(4) == '1010'      #=> true
puts stringy(7) == '1010101'   #=> true