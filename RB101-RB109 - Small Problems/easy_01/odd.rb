=begin
Write a method that takes one integer argument, which may be positive, 
negative, or zero. This method returns true if the number's absolute value is
odd. You may assume that the argument is a valid integer value.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.
=end

def to_be_or_not_to_be(lul)
  if lul % 2 == 0
    return false
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