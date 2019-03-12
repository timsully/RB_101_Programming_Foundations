=begin
Build a program that displays when the user will retire and how many years she has
to work until retirement.

PEDAC, Breaking down the Problem:

Inputs:
  - Prompts user for their age
  - Asks user at what age they'd like to retire

Outputs:
  - Grabs the sum of age they'd like to retire subtracted by their current
    age and outputs what year they will retire.

Mental Model:

Write a program that prompts the user for their current age and asks them
for what age they'd like to retire. Assign both integer values to variables
and subtract the age retired by the current age to find the time left until
desired retirement. Once you have the time left defined, use the Time class
and create a new instance of the Time class and assign it to a variable.
Once assigned to a variable apply the .year method onto the variable which
will output the current year in the final puts statement. Also, create a 
variable that adds the current years left until retirement to the current
year and then add the to the puts statement using string interpolation. BOOM!


Examples/Test Cases
------------------------
Example 1

Input
  - What is your age? 30
    At what age would you like to retire? 70

Output
  - It's 2016. You will retire in 2056.
    You have only 40 years of work to go!
------------------------
=end
time = Time.new

print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
age_to_retire = gets.chomp.to_i

years_left = age_to_retire - current_age

age_will_retire = time.year + years_left

puts "It's #{time.year}. You will retire in #{age_will_retire}."
puts "You have only #{years_left} years to go!"