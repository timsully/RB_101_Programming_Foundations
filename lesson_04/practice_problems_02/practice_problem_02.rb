# Practice Problem 2
# Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Assigns all values from the hash to the values_only variable
values_only = ages.values

# Adds all integers up from array and assigns to answer variable
answer = values_only.inject(:+) # => 6174


# Another Approach
total_ages = 0
# Assign a variable to an initial value of 0 and then iterate
# through the Hash adding each value in turn to the total
ages.each { |_, age| total_ages += age }
total_ages # => 6174