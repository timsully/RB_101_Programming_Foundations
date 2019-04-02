=begin
In this assignment, we'll continute on the calculator program from before.
We'll refactor parts of it and add some new functionality. Watch the video
below and type along!
=end
require 'yaml'

MESSAGES = YAML.load_file('test.yml')

puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  # zero or more digits, followed by an optional period
  # followed by zero or more digits
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def number?(input)
  # account for inputs that include decimals
  # verify that only valid numbers -- integers or floats -- are entered?
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word =  case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end

  x = "A random line of code"

  word
end

prompt(MESSAGES['welcome'])

# intializing outside of loop to reference later
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  # Initialize variable outside of loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt(MESSAGES['op_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4, HA!")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['again'])
  answer = Kernel.gets().chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['bye'])