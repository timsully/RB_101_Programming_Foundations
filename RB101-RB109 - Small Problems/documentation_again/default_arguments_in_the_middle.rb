=begin
Consider the following method and a call to that method:
=end
# Using default positional arguments
# Ruby will fill in the missing arguments in-order
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)