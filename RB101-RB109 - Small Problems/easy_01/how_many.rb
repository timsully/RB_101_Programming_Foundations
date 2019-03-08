=begin
Write a method that counts the number of occurences of each element
in a given array.

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted,
print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

PEDAC, Breaking down the Problem:

Inputs:
  - method that takes in an array as an argument
  - 

Outputs:
  - car => 4, truck => 3, SUV => 1, motorcycle => 2
  - outputs returning element and its count in the array being passed into 
    the function
  - once counted, print each element alongside the number of occurrences


  rules:
    - The words in the array are case-sensitive 'suv' != 'SUV'

Implicit Rules:
  - "counts the number of occurences of each element in an array"


Clarifying Questions?
  - How do we count these elements in the array and recognize that they have the
    same value?


Mental Model:

Create a function that counts the occurrences of the same string in the given array
that isn't case sensitive. When iterating on the specified array, have an empty
hash to store each new key-value pair. The key value pair being the string and how
many times it has occurred in the array and display the output as indicated from the
exercise.



Examples/Test Cases

Validation
* Note that we derive our examples from our rules?

------------------------
Example 1

Input
  - 

Output
  - print each key-value pair
  - return string:
      car => 4
      truck => 3
      SUV => 1
      motorcycle => 2

------------------------
=end
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(array)
  occurrences = {}

  # Iterate over each element and create a new key-value pair in occurrences
  array.each do |element|
    # use Array#count to count the number of elements w/ same value and
    # stored in the occurrences hash
    occurrences[element] = array.count(element)
  end
  # Returns => {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}

  # Iterates through each element in the occurrences hash and
  # displays key-value pairs baby YEWWWWWWWWWW!
  occurrences.each do |key, count|
    puts "#{key} => #{count}"
  end
end


count_occurrences(vehicles)


=begin
My Solution

b = Hash.new(0)

vehicles.each do |v|
  b[v] += 1
end

b.each do |k, v|
  puts "#{k} => #{v}"
end
=end