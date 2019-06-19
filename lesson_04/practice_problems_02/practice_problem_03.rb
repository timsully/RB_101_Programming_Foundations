# Practice Problem 3
# In the age hash, throw out the really old people (age 100 or older).
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if { |_, age| age < 100 }