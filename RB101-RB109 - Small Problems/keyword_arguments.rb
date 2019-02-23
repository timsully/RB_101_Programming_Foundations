=begin
What does this code print?

Answer: Prints 5 & 8
If you need a method that works with numbers, check the
classes Integer, Float, Numeric, and Math. Integer and Float
inherit from Numeric. Numeric is basically the superclass of 
all numeric types, while Math is a module that supplies a lot
of number crunching functionality. As of Ruby 2.4.0 all integer
valeus are Integer objects and no longer uses Ficnum and Bignum.
=end
5.step(by: 3, to: 10 ) { |value| puts value }