=begin
What will the following code print, and why? Don't run the code until you have
tried to answer.
=end
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
# Iterates through array1 and passes in every element to the empty
# array2 array
array1.each { |value| array2 << value }
# Calls each element in self and returns the array itself
# if a string in the array starts with an uppercase C or S
# the string is then mutated to all uppercase letters in the
# array (self)
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo