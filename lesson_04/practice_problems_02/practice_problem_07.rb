# Practice Problem 7
# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

result = {}

# Concatenated into array with all letters lower and uppercase from a-z
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  # Scans and counts how many of the same letter is in the string stored in the statement var
  letter_frequency = statement.scan(letter).count
  # If the letter frequency is more than zero which it is for each letter in the
  # string stored in statement var, then add that letter to the results hash
  result[letter] = letter_frequency if letter_frequency > 0
end

result
#=> {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}