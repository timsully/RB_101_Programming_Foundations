# Practice Problem 7
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin
The return value of block is determined by the return value of the last experession within the block. In this case the last statement evaluated is num.odd?, which returns a boolean. Therefore the block's return value will be a boolean, since Fixnum#odd? can only return true or false.

Since the Array#any? method returns true if the block ever returns a value other than false or nil, and the block returns true on the first iteration, we know that any? will return true.
=end