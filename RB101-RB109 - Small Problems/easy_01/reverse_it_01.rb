=begin
Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.
=end

# method takes one argument
def reverse_sentence(string)
  # first need to separate sub strings by using split w/ no arguments to separate
  # each word and place it in an array. Use reverse to reverse order of words on
  # the array
  string.split.reverse.join(' ')
end


puts reverse_sentence('') == '' #=> true
puts reverse_sentence('Hello World') == 'World Hello' #=> true
puts reverse_sentence('Reverse these words') == 'words these Reverse' #=> true
