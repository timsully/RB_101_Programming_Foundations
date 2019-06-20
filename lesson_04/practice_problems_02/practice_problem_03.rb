# Practice Problem 3
# In the age hash, throw out the really old people (age 100 or older).
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Removes every key-value pair from ages hash for which block evaluates to false
ages.keep_if { |_, age| age < 100 }

# Deletes every key-value pair from hsh for which block evaluates to false.
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}