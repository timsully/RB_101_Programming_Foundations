# Question 5
# How could the unnecessary duplciation in this method be removed?
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end

def color_valid(color)
  (color == "blue" || color == "green") ? true : false
end