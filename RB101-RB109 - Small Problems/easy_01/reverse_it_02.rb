=begin
Write a method that takes one argument, a string containing one or more words,
and returns the given string with all five or more letter words reversed. Each
string will consist of only letters and spaces. Spaces should be included when
more than one word is present.

PEDAC, Breaking down the Problem:

Inputs:
  - method that takes one argument which is a string

Outputs:
  - returns the string containing one or more words, and returns the given
    string with all five or more letter words reversed.

  rules:
    - each string will consist of only letters and spaces
    - spaces should be included only when more than one word is present

Implicit Rules:
  - 


Clarifying Questions?
  - Will I be  using a conditional statement within the method to solve this problem?
  - Are there methods I could use to count how many words an element in the array has
    before I re-join them and return it?
  - 

Mental Model:

The string passed into the method from being called in the program must first be split into a new array and then reversed and if the letters have 5 or more letters in them to reverse those as well in the new array and return.



Examples/Test Cases

Validation
* Note that we derive our examples from our rules?

------------------------
Example 1

Input
  - reverse_words('Professional')

Output
  - return string: "lanoisseforP"
------------------------

------------------------
Example 2

Input
  - reverse_words('Walk around the blok')

Output
  - return string: "Walk dnuora the kcolb"
------------------------

------------------------
Example 3

Input
  - reverse_words('Launch School')

Output
  - return string: "hcnuaL loohcS"
------------------------
=end





# Test Cases
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS