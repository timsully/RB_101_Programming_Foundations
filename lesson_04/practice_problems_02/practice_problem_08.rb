# Practice Problem 7
# What happens when we modify an array while we are iterating over it? What would be output by this code?

# Example 1
numbers = [1, 2, 3, 4]
# removes the first element of self and returns it
numbers.each do |number|
  p number
  numbers.shift(1)
end
# => [3, 4]


# Example 2
numbers = [1, 2, 3, 4]
# removes the last element of self and returns it
numbers.each do |number|
  p number
  numbers.pop(1)
end
# => [1, 2]