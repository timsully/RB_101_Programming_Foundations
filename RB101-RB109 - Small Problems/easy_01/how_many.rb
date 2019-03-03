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

b = Hash.new(0)

vehicles.each do |v|
  b[v] += 1
end

b.each do |k, v|
  puts "#{k} => #{v}"
end

# count_occurrences(vehicles)