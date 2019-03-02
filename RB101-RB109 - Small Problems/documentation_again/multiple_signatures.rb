=begin
What do each of the puts statements output?
=end
# Uses parentheses and spaces instead of quotations
# and commas around each element in the array
a = %w(a b c d e)
# Throws an IndexError because referenced index lies 
# outside of the array bounds which can be prevented by
# supplying a second argument
puts a.fetch(7)
# Outputs beats me
puts a.fetch(7, 'beats me')
# 49
puts a.fetch(7) { |index| index**2 }