=begin
Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

PEDAC, Breaking down the Problem:

Inputs:
  - method that takes one argument which is a string and returns a new string

Outputs:
  - new returned string returns the words in reverse order
  - should print a boolean value of true

  rules:
    - 

Implicit Rules:
  - not case sensitive.


Clarifying Questions?
  - How do I return a string that is empty? Do I need to provide a conditional
    statement for a situtation like so since the test case is provided?
  - Or do I provide a conditional statement to handle errors if a string isn't
    passed into the method?
  - How do I return a new a string in reverse order? 
    (Check documentation/google, lul)

Mental Model:

Write a method that takes one argument which is a string and returns a new one
in reverse order.



Examples/Test Cases

Validation
* Note that we derive our examples from our rules?

------------------------
Example 1

Input
  - reverse_sentence('') == '' #=> true

Output
  - return string and true?
------------------------

------------------------
Example 2

Input
  - reverse_sentence('Hello World') == 'World Hello' #=> true

Output
  - return string and true?
------------------------

------------------------
Example 3

Input
  - reverse_sentence('Reverse these words') == words these Reverse #=> true

Output
  - return string and true?
------------------------
=end
def reverse_sentence(str)
  # Grabs a string and splits the words by space
  split = str.split(' ')
  # join them together again with reverse?
  reverse = split.reverse
  # Puts into new array with words reversed
  reverse_joined = reverse.join(' ')
end


puts reverse_sentence('') == '' #=> true
puts reverse_sentence('Hello World') == 'World Hello' #=> true
puts reverse_sentence('Reverse these words') == 'words these Reverse' #=> true