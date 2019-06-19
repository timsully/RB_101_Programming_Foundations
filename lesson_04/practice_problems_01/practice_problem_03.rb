# Practice Problem 3
# What is the return value of reject in the following code? Why?
[1, 2, 3].reject do |num|
  puts num
end

# The important thing to be aware of is how reject treats the return value of the block. reject returns a new array containing elements where the block's return value is "falsey". If the return value was false or nil the element would be selected.