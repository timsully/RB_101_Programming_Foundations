# Question 3
# Alan wrote the following method, which was intended to show all of the factors of the input number:

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


# Bonus 1
# Allows you to determine if the result of the division is an integer number (no remainder).


# Bonus 2
# This is the actual return value from the method. Recall that without an explicit return statement in the code, the return value of the method is the last statement executed. If we ommitted this line, the code would execute, but the return value of the method would be nil.