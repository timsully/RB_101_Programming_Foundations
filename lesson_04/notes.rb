# Collection Basics

## String Element Reference
str = 'abcdefghi'

str[2] #=> "c"

# Reference multiple characters within a string by using an index starting point and the number of characters to return.
str[2, 3] #=> "cde"

# Is alternative syntax for 
str.slice(2, 3)

# Calling [0] on the return value of str[2, 3] (which is 'cde') 
str[2, 3][0] #=> "c"


## Array Element Reference
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

arr[2] # => "c"


arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

# arr[2, 3] is alternative syntax for Array#slice which is different from String#slice as the String implementation returns a string and the Array method of slice returns a new array
arr[2, 3] #=> ["c", "d", "e"]

arr[2, 3][0] #=> "c"

# One situation where Array#slice does not return a new array is if we pass the method only an index, rather than a start and length or a range; in this case the element at that index is returned rather than a new array.
arr = [1, 'two', :three, '4']
arr[3, 1] # => ["4"]
arr[3..3] # => ["4"]
# Simply returns the element itself
arr[3]    # => "4"

# Be aware of exactly what is returned, as this will affect how you can subsequently interact with that return value.


## Hash Element Reference
hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"

# Accessing keys and values
country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
country_capitals.keys      # => [:uk, :france, :germany]
country_capitals.values    # => ["London", "Paris", "Berlin"]
country_capitals.values[0] # => "London"


# Element Reference Gotchas
str = 'abcde'
arr = ['a', 'b', 'c', 'd', 'e']

str[2] # => "c"
arr[2] # => "c"

# Referencing an out-of-bounds index in this way returns nil
arr = [3, 'd', nil]
arr[2] # => nil
arr[3] # => nil

arr.fetch(2) # => nil
arr.fetch(3) # => IndexError: index 3 outside of array bounds: -3...3
             #        from (irb):3:in `fetch'
             #        from (irb):3
             #        from /usr/bin/irb:11:in `<main>'

# Always try to think about whether nil is the real element in the array or if it's Ruby's way of telling us we've gone beyond the array boundary

# Negative Indices
str = 'abcde'
arr = ['a', 'b', 'c', 'd', 'e']

str[-2] # => "d"
arr[-2] # => "d"

# Elements in String and Array objects can be referenced using negative indices, starting from the last index in the collection -1 and working backwards.

# What will be return by the following calls?
str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

# The negative indices are out of bounds
str[-6] #=> nil
arr[-6] #=> nil

# Confirm by invoking fetch
arr.fetch(-6) # => IndexError: index -6 outside of array bounds: -5...5
              #        from (irb):2:in `fetch'
              #        from (irb):2
              #        from /usr/bin/irb:11:in `<main>'


# Invalid Hash Keys
# Hash also has a #fetch method
hsh = { :a => 1, 'b' => 'two', :c => nil }

hsh['b']       # => "two"
hsh[:c]        # => nil
hsh['c']       # => nil
hsh[:d]        # => nil

hsh.fetch(:c)  # => nil
hsh.fetch('c') # => KeyError: key not found: "c"
               #        from (irb):2:in `fetch'
               #        from (irb):2
               #        from /usr/bin/irb:11:in `<main>'
hsh.fetch(:d)  # => KeyError: key not found: :d
               #        from (irb):3:in `fetch'
               #        from (irb):3
               #        from /usr/bin/irb:11:in `<main>'


# Conversion
# String#chars - returns an array of individual characters
str = 'Practice'

arr = str.chars # => ["P", "r", "a", "c", "t", "i", "c", "e"]

arr.join #=> "Practice"

str = 'How do you get to Carnegie Hall?'
arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
arr.join        # => "HowdoyougettoCarnegieHall?"
arr.join(" ")   # => " How do you get to Carnegie Hall?"

# Hash has a #to_a method, which returns an array
hsh = { sky: "blue", grass: "green" }
# Each sub-array is equivalent to a key-value pair from the initial hash.
hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]

arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]

arr.to_h # => { :name => "Joe", :age => 10, :favorite_color => "blue" }


# Element Assignment
## String Element Assignment

# You can use the element assignment notation of String in order to change the value of a specific character within a string by referring to its index.
str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'
str # => "Joe's Favorite Color Is Blue"

# Array Element Assignment
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]

# Note that this is destructive action on the array
arr[1] += 1 # => 3
arr[2] += 1 # => 4
arr[3] += 1 # => 5
arr[4] += 1 # => 6
arr         # => [2, 3, 4, 5, 6]


# Hash Element Assignment
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegatable'
hsh # => {:apple=>"Fruit", :carrot=>"Vegetable", :pear=>"Fruit", :broccoli=>"Vegatable"}