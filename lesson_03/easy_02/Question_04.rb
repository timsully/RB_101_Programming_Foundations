# Question 4
# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")
advice.match?("Dino")
# Not a perfect solution, as it would match any substring with Dino in it.