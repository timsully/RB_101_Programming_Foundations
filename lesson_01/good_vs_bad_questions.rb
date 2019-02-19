=begin
Why is it that a constant is accessible from a method, but a local variable isn't?

The reason the test method can access the constant but not the local variable 
is because local variables and constants have different scoping rules.
=end
NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test()