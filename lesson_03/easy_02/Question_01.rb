# Question 1
# In the hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

ages.any?("Spot")
# => false

ages.value?("Spot")
# => false

ages.member?("Spot")
# => false

ages.include?("Spot")
# => false

ages.has_key?("Spot")
# => false