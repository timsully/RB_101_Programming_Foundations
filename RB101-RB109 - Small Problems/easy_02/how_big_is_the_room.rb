=begin
Build a program that asks a user for the length and the width of a room in
meters and then displays the area of the room in both square meters and
square feet. Don't worry about validating the input at this time.

Note: 1 square meter == 10.7639 square feet

PEDAC, Breaking down the Problem:

Inputs:
  - Program asks user for length and width of their room in meters

Outputs:
  - Displays the area of the room in both square feet and meters

  rules:
    - 

Clarifying Questions?
  - How do I figure out the conversion from meters to square feet?

Mental Model:

Ask for the length and then the width of the users room. Then calculate users input
for both the length and width and turn it into meters and then also convert it into
square feet.



Examples/Test Cases

------------------------
Example 1

Input
  - Length: 10
    Width: 7

Output
  - 
------------------------

=end


=begin
Examples:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end 
puts "Enter the length of the room in meters:"
length = gets.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

square_meters = length * width

one_square_feet = 10.7639

square_feet =  one_square_feet * square_meters
# Length multiplied by width gives you the square meters
# puts "The area of the room is 70.0 square meters (753.47 square feet)."
puts "The area of the room is #{square_meters.to_f} square meters (#{square_feet.to_f} square feet)."