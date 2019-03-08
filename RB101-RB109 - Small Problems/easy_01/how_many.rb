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