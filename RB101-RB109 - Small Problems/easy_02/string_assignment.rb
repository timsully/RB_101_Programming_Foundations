=begin
Take a look at the following code:
=end
# What does this code print out?
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
#=> Alice
#=> Bob


name = 'Bob'
save_name = name
name.upcase!
puts name, save_name