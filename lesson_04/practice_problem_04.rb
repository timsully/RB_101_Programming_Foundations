# Practice Problem 4
# What is the return value of each_with_object in the following code? Why?
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# On the first iteration, we add "a" => "ant" to the hash. On the second, we add "b" => "bear", and on the last iteration, we add "c" => "cat". Thus, #each_with_object in this example returns a hash with those 3 elements.