VALID_CHOICES = %w(rock r paper p scissors lizard l spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper')
# end

def display_results(player, computer)
  if (player == 'rock' || player == 'r' && computer == 'scissors' || computer == 'lizard' || computer == 'l') ||
      (player == 'paper' || player == 'p' && computer == 'rock' || computer == 'r' || computer == 'spock') ||
      (player == 'scissors' && computer == 'paper' || computer == 'p' || computer == 'lizard' || computer == 'l') ||
      (player == 'lizard' || player == 'l' && computer == 'paper' || computer == 'p' || computer == 'spock') ||
      (player == 'spock' && computer == 'scissors' || computer == 'rock' || computer == 'r')
    prompt("You won!")
  elsif (computer == 'rock' || computer == 'r' && player == 'scissors' || player == 'lizard' || player == 'l') ||
        (computer == 'paper' || computer == 'p' && player == 'rock' || player == 'r' || player == 'spock') ||
        (computer == 'scissors' && player == 'paper' || player == 'p' || player == 'lizard' || player == 'l') ||
        (computer == 'lizard' || computer == 'l' && player == 'paper' || player == 'p' || player == 'spock') ||
        (computer == 'spock' && player == 'scissors' || player == 'rock' || player == 'r')
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