=begin
Write a program that asks the user to enter an integer greater than 0, then
asks if the user wants to determine the sum or product of all numbers between
1 and the entered integer.

PEDAC, Breaking down the Problem:

Inputs:
  - Enter an integer greater than 0
  - Enter 's' or 'p' to compute the product

Outputs:
  - Output will either be the range of numbers from 1-x inclusive added together
    for sum or multiplied for product.

  rules:
    - Must enter an integer greater than 0.

Implicit Rules:
  - 


Clarifying Questions?
  - What is the process of grabbing the range of integers since user input specifies
    the range? 
  - Should I try to convert array of integers to an array of strings and then split
    the array into its own characters and the re-convert back to integers?


Mental Model:
First integer obtains the operation to be performed from the user, then perform the 
requested operation using one of two methods: compute_sum adds the numbers
together, while compute_product multiplies them.


Examples/Test Cases
------------------------
Example 1

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.
------------------------

------------------------
Example 2

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
------------------------
=end
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp


if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end




=begin
Work In Progress

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i


# if entered_key == 's'
[1, 2, 3, 4, 5].reduce(:+)
# else
[1,2,3,4,5,6].reduce(:*)


# entering 's' would compute this:
[1, 2, 3, 4, 5].reduce(:+)

# entering 'p' would compute this:
[1,2,3,4,5,6].reduce(:*)
=end