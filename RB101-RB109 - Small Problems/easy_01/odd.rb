=begin
Write a method that takes one integer argument, which may be positive,
negative, or zero. This method returns true if the number's absolute value is
odd. You may assume that the argument is a valid integer value.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

PEDAC, Breaking Down the Problem:

Inputs:
  - takes one argument that's an integer which can be positive, negative, or zero
  - input value examples, 2, 5, -17, -8, 0, 7

Outputs:
  - returns true if number is odd

  rules:
    - may be positive, negative, or zero
    - must be a method


Implicit Rules:
  - may assume the argument is a valid integer
  
  Integer:
    - returns boolean value

Clarifying Questions?
  - none

Mental Model:

Write a method that takes one argument which is an integer value that can be positive,
negative, or zero that returns true if the value is odd, but you can't use the #odd or
#even methods in your method/solution.


Examples / Test Cases

Validation
* Not that we derive our examples from our rules? But, what if they are provided?

------------------------
Example 1

Input
  - Integer value: 2

Output
  - returns false
------------------------

------------------------
Example 2

Input
  - Integer value: 5

Output
  - returns true
------------------------

------------------------
Example 3

Input
  - Integer value: -17

Output
  - returns true
------------------------

------------------------
Example 4

Input
  - Integer value: -8

Output
  - returns false
------------------------

------------------------
Example 5

Input
  - Integer value: 0

Output
  - returns false
------------------------

------------------------
Example 6

Input
  - Integer value: 7

Output
  - returns true
------------------------

Determine data structure to work with to convert input to output
Then get the right level of detail to readily convert to code w/out
actually writing code.
=end


def to_be_or_not_to_be(int)
  # if number is odd return true
  if int % 2 == 0
    return false
    # else return false
  else
    return true
  end
end


# Examples
puts to_be_or_not_to_be(2)    # => false
puts to_be_or_not_to_be(5)    # => true
puts to_be_or_not_to_be(-17)  # => true
puts to_be_or_not_to_be(-8)   # => false
puts to_be_or_not_to_be(0)    # => false
puts to_be_or_not_to_be(7)    # => true