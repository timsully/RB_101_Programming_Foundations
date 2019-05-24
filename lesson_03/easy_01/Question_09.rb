# Question 9
# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney")
# => ["Barney", 2]

flintstones_array = flintstones.to_a
flintstones_array.delete_at(0)
flintstones_array.delete_at(0)
flintstones_array.delete_at(1)
flintstones_array.delete_at(1)
flintstones_array.delete_at(1)
flintstones_array.flatten!
# => ["Barney", 2]