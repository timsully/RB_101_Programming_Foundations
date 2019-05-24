=begin

Question 1
What would you expect the code below to print out?

numbers = [1, 2, 2, 3]

Returns a new Array object with unique elements, but doesn't
modify the original object
numbers.uniq

puts numbers #=> 1, 2, 2, 3


Question 2

Describe the difference between ! and ? in Ruby. And explain what would happen
in the following scenarios:

1. What is != and where should you use it?
    != stands for not equal to whatever is stated on the right side the operator when comparing it to the value on the left side of the != operator.


2. Put ! before something, like !user_name
    !<some object> is used to turn any object into the opposite of their boolean
    equivalent

3. Put ! after something, like words.uniq!
    Refers to a destructive method that will mutate the receiver. Note,
    that not all destructive methods all have an exclamation point to
    indicate that it's destructive. Example, the shovel operator, '<<'

4. Put ? before something
    Is the ternary operator for if...else

5. Put ? after something
    Indicates whether something exists on what is being called, but it's
    actually a part of the method name, and not Ruby syntax.


6. Put !! before something, like !!user_name
    !!<some object> is used to turn any object into their boolean equivalent


Question 3
Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')


Question 4
The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

What do the following method calls do (assume we reset numbers to the original array between method calls)?

# Deletes at the index specifed in the parameter or nil if index is
# out of range.
numbers.delete_at(1)

# Deletes all items equal to parameter. If no matching item is found,
# returns the last deleted item or nil.
numbers.delete(1)


Question 5
Programmatically determine if 42 lies between 10 and 100.
(10..100).member?(42)
(10..100).cover?(42)


Question 6
Starting with the string:
famous_words = "seven years ago..."
show two different ways to put the expected "Four score and " in front of it.

1.
famous_words = "seven years ago..."
first = "Four score and "

first + famous_words #=> "Four score and seven years ago..."


2. 
first << famous_words #=> "Four score and seven years ago..."


3.
famous_words.prepend("Four score and ")


Question 7
Result = 42


Question 8
If we buld an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

Make this into an un-nested array.

flintstones.flatten!
=> ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]


Question 9
Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney")
=> ["Barney", 2]

flintstones_array = flintstones.to_a
flintstones_array.delete_at(0)
flintstones_array.delete_at(0)
flintstones_array.delete_at(1)
flintstones_array.delete_at(1)
flintstones_array.delete_at(1)
flintstones_array.flatten!
=> ["Barney", 2]

=end