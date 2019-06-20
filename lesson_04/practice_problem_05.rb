# Practice Problem 5
# In the array, find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# My Approach
flintstones.each_with_index do |item, index|
  if item.start_with?("Be")
    puts "Item #{item} is at index #{index}."
  end
end

# Launch School Solution
flintstones.index { |name| name[0, 2] == "Be" }