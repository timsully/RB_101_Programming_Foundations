=begin
PEDAC, Breaking down the Problem:

Inputs:
  - loan amount
  - the annual percentage rate (APR)
  - loan duration

Outputs:
  - monthly interest rate
  - loan duration in months -- i don't this is an output, double check

Implicit Rules:
  - If it's an annual interest rate convert it to a monthly interest rate
  - What we don't know is the monthly payment, but by getting the loan 
    amount, monthly interest rate, and loan duration in months we can find
    the monthly payment. 



Clarifying Questions?
  - How to calculate monthly interest rate?
  - How to convert input of what's given for loan duration in months?
  - How to convert Annual Percentage Rate to monthly interest rate.
  - Figure out what your inputs need to be in. Should it be an integer or a
    float rounded to the hundredths place?
  - What is the loan duration?
  - Will we need to display our float point value of the monthly interest rate
    as a percentage the end-user can understand when recieveing the results?


Mental Model:
In order for the mortgage calculator to work we will need to grab the loan amount,
annual percentage rate, and loan duration. We must grab the loan amount from the
user and ask for the annual interest. With the given information so far, we can
divide the annual interest by 12 to give us our monthly interest rate. The monthly
interest rate will be a float rounded to the hundredths place. We can then convert
to a percentage if needed for the user to easily convey what has been calculated
in the background. Once we have our monthly interest rate(MIR), we will divide the 
MIR by 1 - (1 + J)-n, which is MIR + 1 multiplied by the loan duration in months 
negatively, with the value we will the use the value produced out of MIR + 1's 
value multiplied by negative loan duration in months which is then 
1 - value of (1 + J)-n evaluated, then with that value, MIR is divided by that 
value and then multiplied by loan amount to get monthly payment.


Examples/Test Cases
------------------------
Example 1

Input
  - mortgage of $200,000
  - interest rate of %6
  - annual interest rate $12,000


Output
  - monthly payment of $1,000
------------------------
=end
def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator")
  prompt("------------------------------")

  prompt("What is the loan amount?")
    
  # initialize variable explicitly
  amount = ''
  loop do
    amount = Kernel.gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  # Presenting an example to the user
  prompt("What is the interest rate?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")

  years = ''
  loop do
    years = Kernel.gets.chomp

    if years.empty? || years.to_i < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")