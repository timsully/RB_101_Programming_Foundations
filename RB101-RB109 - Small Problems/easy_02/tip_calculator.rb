=begin
Create a simple tip calculator. The program should prompt for a bill amount and
a tip rate. The program must compute the tip and then display both the tip and the
total amount of the bill.


PEDAC, Breaking down the Problem:

Inputs:
  - Prompts for a bill amount
  - Prompts for a tip rate

Outputs:
  - display both the tip and the total amount of the bill

  rules:
    - must compute the tip

Clarifying Questions?
  - When I grab users input for tip percentage, how do I apply that to the bill
    amount. Multiply it by 0.xx amount? 


Mental Model:

Prompt the user for a bill amount and then ask for a tip rate which will both be
assigned to variables.


Examples/Test Cases
------------------------
Example 1

Input
  - What is the bill? 200
    What is the tip percentage? 15

Output
  - The tip is $30.0
    The tip is $230.0
------------------------
=end
# 200 * 0.15 = 30
# multiply tip by 0.10
print "What is the bill? "
bill = gets.chomp
bill = bill.to_f

print "What is the tip percentage? "
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is #{tip}"
puts "The total is #{total}"