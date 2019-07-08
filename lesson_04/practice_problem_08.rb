# Practice Problem 8
# What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
# returns the array itself
numbers.each do |number|
  p number
  # returns new_ary by returning the first n elements
  numbers.shift(1)
end
# => [3, 4]


# What would be output by this code?
numbers.each do |number|
  p number
  # Pops of last 2 elements from self and returns it and
  # remaining elements returned in new_ary
  numbers.pop(1)
end

# => [1, 2]

# In both cases the iterators DO NOT work on a copy of the original array or from stale meta-data (length) about the array. They operate on the original array in real time.