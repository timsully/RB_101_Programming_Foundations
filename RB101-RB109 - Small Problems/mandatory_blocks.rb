=begin
The Array#bsearch method is used to search ordered Arrays more quickly than #find
and #select can. Assume you have the following code.

How would you search this Array to find the first element whose value exceeds 8?
=end
a = [1, 4, 8, 11, 15, 19]

value = a.bsearch { |x| x > 8 }
puts value #=> 11