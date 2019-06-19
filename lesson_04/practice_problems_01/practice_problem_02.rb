# Practice Problem 2
# How does count treat the block's return value? How can we find out?
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# A block is given so it counts the number of elements for which the block returns a true value. Thus, returning the numbers of elements that is less than 4 characters within the array which is 2.