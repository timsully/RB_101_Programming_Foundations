# Question 6
# Starting with the string:
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

# 1.
famous_words = "seven years ago..."
first = "Four score and "

first + famous_words #=> "Four score and seven years ago..."


# 2. 
first << famous_words #=> "Four score and seven years ago..."


# 3.
famous_words.prepend("Four score and ")