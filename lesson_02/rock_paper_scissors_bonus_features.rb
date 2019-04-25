VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper')
# end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors' || computer == 'lizard') ||
      (player == 'paper' && computer == 'rock' || computer == 'spock') ||
      (player == 'scissors' && computer == 'paper' || computer == 'lizard') ||
      (player == 'lizard' && computer == 'paper' || computer == 'spock') ||
      (player == 'spock' && computer == 'scissors' || computer == 'rock')
    prompt("You won!")
  elsif (computer == 'rock' && player == 'scissors' || player == 'lizard') ||
        (computer == 'paper' && player == 'rock' || player == 'spock') ||
        (computer == 'scissors' && player == 'paper' || player == 'lizard') ||
        (computer == 'lizard' && player == 'paper' || player == 'spock') ||
        (computer == 'spock' && player == 'scissors' || player == 'rock')
    prompt("Computer won!")
  else player == computer
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, Good Bye!")