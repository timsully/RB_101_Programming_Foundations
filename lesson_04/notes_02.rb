# Looping
# loop method is in the Kernel module, it's available everywhere, just like puts and gets
arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

arr # => [2, 3, 4, 5, 6]

# If counter had initialized inside the loop it would be reassigned to 0 on each iteration and the break condition would never be met
counter = 0

loop do
  puts 'Hello!'
  counter += 1
  break if counter == 5
end

# When next is executed, it tells the loop to skip the rest of the current iteration and begin the next one.
counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end


# Iterating Over Collections

# String
# loop that iterates over a given string and prints each character
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

# Array
colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end

# An array that contains various types of objects
objects = ['hello', :key, 10, []]
counter = 0

loop do
  break if counter == objects.size
  puts objects[counter].class
  counter += 1
end


# Hash
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

# Assign keys to pets variable
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  # Iterates through size of hash
  break if counter == number_of_pets.size
  # Saving each key to the current_pet variable
  current_pet = pets[counter]
  # Retrieve the appropriate value out of number_of_pets hash
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end