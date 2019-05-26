# Question 9
# Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.
def rps(fist1, fist2)
  if fist1 == "rock"
    # if fist1 is rock and fist2 is paper, put paper, otherwise put rock
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    # if fist1 is paper and fist2 is scissors, put scissors, otherwise put paper
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    # if fist1 is not rock or paper
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the following call?

# The outermost call is evaluated by determining the result of rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock. Meaning that we need to evaluate the two separate results of rps("rock", "paper") and rps("rock", "scissors"). These innermost expressions return "paper" and "rock". Calling rps on that input will return "paper". When evaluated against "rock" will return "paper".
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")