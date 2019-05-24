# Question 2
# The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# That concatenation of the string and final value of the two integers added together on the right will throw an error because you must convert the Integer to a String. Error thrown is, "TypeError (no implicit conversion of Integer into String)" One way to resolve this issue would be to do the following:

# Attach the .to_s method to integer values being added to convert it to a string
puts "the value of 40 + 2 is " + (40 + 2).to_s #=> the value of 40 + 2 is 42

# You could also mutate the original string and add in what is on the right by using # the shovel operator
puts "the value of 40 + 2 is " + (40 + 2).to_s #=> the value of 40 + 2 is 42

# Or you could use string interpolation (best option in my opinion)
puts "the value of 40 + 2 is #{40 + 2}"