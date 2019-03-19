=begin
Pseduo-Code Example Problem:

Step 1 - A few lines of pseudo-code
Given a collection of integers.

Iterate through the collection one by one.
  - save the first value as the starting value.
  - for each iteration, compare the saved value with the current value.
  - if the saved value is greater, or it's the same
    - move to the next value in the collection
  - otherwise, if the current value is greater
    - reassign the saved value as the current value

After iterating through the collection, return the saved value.

Step 2 - Move it to a more formal pseudo-code
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator <= length of numbers
    SET current_number = value within numbers collection at space "iterator"
    IF saved_number >= current_number
      go to the next iteration
    ELSE
      saved_number = current_number

    iterator = iterator + 1

PRINT saved_number

END

Step 3 - Translate it into Ruby
def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num # assign the first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end


Practice Problems
1. A method that returns the sum of two integers
Step 1 - A few lines of pseudo-code
- Write a method 
  - returns two integers

Step 2 - Move it to a more formal pseudo-code
START

sum_of_two_integers(param1, param2)
  return sum of two integers
end

END

Step 3 - Translate it into Ruby
def sum_of_two_integers(x, y)
  x + y
end


2. A method that takes an array of strings, and returns a string that is all those 
   strings concatenated together.
Step 1 - A few lines of pseudo-code
  - Write a method
    - takes array of strings
    - returns a string of all strings in the array added together(concatenated)

Step 2 - Move it to a more formal pseudo-code
START

SET array_of_strings = ["array", "of", "strings"]

method(array_of_strings)
array_of_strings.join(" ")

PRINT array_of_strings
end

END

Step 3 - Translate it into Ruby
array_of_strings = ["array", "of", "strings"]

def concatenate(array)
  array.join(" ")
end

concatenate(array_of_strings) # => "array of strings"


3. A method that takes an array of integers, and returns a new array with every
   other element.
Step 1 - A few lines of pseudo-code
- Write a method
  - takes an array of integers
  - returns a new array(maybe use map) w/ every other element 
    (so skip every other element)

Step 2 - Move it to a more formal pseudo-code
START

SET integers = [ 1, 2, 3, 4, 5 ]

def array_of_integers(array)
  new_arr = []
  array.each do |num|
    IF array.num == num.even?
      next
    ELSE
      new_arr << array.num
    END
  end

  PRINT new_arr
end

END

Step 3 - Translate it into Ruby
integers = [ 1, 2, 3, 4, 5 ]

def array_of_integers(array)
  new_arr = []

  array.each do |num|
    if array.num == num.even?
      next
    else
      new_arr << array.num
    end
  end

  puts new_arr
end

=end