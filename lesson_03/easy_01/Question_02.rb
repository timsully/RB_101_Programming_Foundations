=begin
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
=end