=begin
User makes a choice
The computer makes a choice
The winner is displayed

Bonus:
Add Lizard and Spock
=end
VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

RULES = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  spock: [:rock, :scissors],
  lizard: [:paper, :spock]
}.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  RULES[first.to_sym].include?(second.to_sym)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_score(score, player, computer)
  score << 'player' if win?(player, computer)
  score << 'computer' if win?(computer, player)
end

def display_score(score)
  player_wins = score.count('player')
  computer_wins = score.count('computer')
  prompt("The score is player: #{player_wins}, computer: #{computer_wins}.")
  prompt("Keep going to get to 5 wins!") unless game_over?(score)
end

def game_over?(score)
  score.count('player') >= 5 || score.count('computer') >= 5
end

# main loop
loop do
  score = []

  # best of 9 loop, what is that exactly?
  loop do
    choice = nil
    # validation loop
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp.downcase

      # validates choice based on beginning chars
      break if
        choice == VALID_CHOICES.find do |valid_choice|
        range_end = valid_choice.start_with?('s') ? 1 : 0
        valid_choice[0..range_end] == choice[0..range_end]
      end

      prompt("That's not a valid choice")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    update_score(score, choice, computer_choice)

    display_score(score)

    break if game_over?(score)
  end

  prompt("Game over, good game!")
  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing, good bye!")