def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    # used to be current_value == 'Fruit'
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end


# Create a method called multiply that can take an additional argument to determine the transformation criteria.
my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(arr, mult_num)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == arr.size

    current_number = arr[counter]
    multiplied_numbers << current_number * mult_num

    counter += 1
  end

  multiplied_numbers
end

multiply(my_numbers, 3)

# select_letter
question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, letter)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

select_letter(question, 'a') # => "aaaaaaaa"
select_letter(question, 't') # => "ttttt"
select_letter(question, 'z') # => ""