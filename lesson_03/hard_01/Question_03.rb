=begin
Question 3

In other practice problems, we have looked at how the scop of variables affects the modification of one "layer" when they are passed to another.

To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

What will be printed by each of these groups?
=end

# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
#=> "two"

puts "one is: #{one}" #=> prints "one"
puts "two is: #{two}" #=> prints "two"
puts "three is: #{three}" #=> prints "three"


# B
def mess_with_vars(one, two,three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
#=>

puts "one is: #{one}" #=> prints "one"
puts "two is: #{two}" #=> prints "two"
puts "three is: #{three}" #=> prints "three"


# C
def mess_with_vars(one, two, three)
  # mutates one with two
  one.gsub!("one", "two")
  # mutates two with three
  two.gsub!("two", "three")
  # mutates three with one
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
#=> one

puts "one is: #{one}" #=> two
puts "two is: #{two}" #=> three
puts "three is: #{three}" #=> one