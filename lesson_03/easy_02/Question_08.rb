# Question 8
# Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

advice.slice!(0..38)
# => "Few things in life are as important as "

advice.slice!(0, advice.index('house'))
# => "Few things in life are as important as "

# As a bonus, what happens if you use the String#slice method instead?

# It does not mutate the string that is referencing the variable 'advice'.