# Question 7
# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items our array? (Dino and Hoppy)
flintstones.push("Dino", "Hoppy")
flintstones.append("Dino", "Hoppy")
# push returns the array so we can chain
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))