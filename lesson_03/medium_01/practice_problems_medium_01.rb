=begin
Question 1
Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:


art = "The Flintstones Rock!"

10.times { |i| puts i art = art.insert(0, " ") }

10.times do |i|
  i = art
  puts i
  art = art.insert(0, " ")
end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }


Question 2
The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)

Why is this and what are two possible ways to fix this?

That concatenation of the string and final value of the two integers added together on the right will throw an error because you must convert the Integer to a String. Error thrown is, "TypeError (no implicit conversion of Integer into String)" One way to resolve this issue would be to do the following:

# Attach the .to_s method to integer values being added to convert it to a string
puts "the value of 40 + 2 is " + (40 + 2).to_s #=> the value of 40 + 2 is 42

# You could also mutate the original string and add in what is on the right by using # the shovel operator
puts "the value of 40 + 2 is " + (40 + 2).to_s #=> the value of 40 + 2 is 42

# Or you could use string interpolation (best option in my opinion)
puts "the value of 40 + 2 is #{40 + 2}"


Question 3
Alan wrote the following method, which was intended to show all of the factors of the input number:

# Function that divides another number or expression evenly and returns even value
def factors(number)
  divisor = number
  factors = []
  begin
    # evaluate statement on right side of shovel operator and if
    # divisor evenly divides number then add into factors array 
    factors << number / divisor if number % divisor == 0
    # decrement divisor by 1
    divisor -= 1
  # stops when divisor is 0
  end until divisor == 0
  
  # return all factors in an array that divides evenly with 
  # the number passed in as an argument when calling the function
  factors
end



# While condition for the loop
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end


Bonus 1
Allows you to determine if the result of the division is an integer number (no remainder).


Bonus 2
This is the actual return value from the method. Recall that without an explicit return statement in the code, the return value of the method is the last statement executed. If we ommitted this line, the code would execute, but the return value of the method would be nil.


Question 4
Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

My Answer
There is a vast difference between the two. Both reflect a different operation. The << aka shovel operator will perform a mutation on whatever object it is called on and append the values to it. In this case, the rolling_buffer1 method appends(adds) a new_element to the end of the buffer array whereas the rolling_buffer2 method concatenates the [new_element] onto the input_array and is assigned to the buffer variable.

Launch School Answer
Yes there is a difference. While both methods have the same return value, in the first implementation, the input argument called buffer will be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have the input array that they pass in be different once that call returns. In other implementation, rolling_buffer2 will not alter the caller's input argument.


Question 5
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"


def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}" 
#=> result is 13
=> nil

Ben defines limit before he calls fib. But limit is not visible in the scope of fib because fib is a method and does not have access to any local variables outside of its scope.

You can make limit an additional argument to the definition of the fib method and pass it in when you call fib.


Question 6
In an earlier practice problem we saw that depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  # adds rutabaga to end of array
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

We learned that whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?

It seems as if the two operations going on within the method contradict each other as one mutates and adds another strings into the array. Whereas the other operation just adds rutabaga to the end of the string if you were to isolate it into its own method.

Code Refactored

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


Question 7
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8


=end