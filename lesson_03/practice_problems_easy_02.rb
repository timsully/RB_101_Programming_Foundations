=begin
Question 1
In the hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
see if "Spot" is present.

ages.any?("Spot")
=> false

ages.value?("Spot")
=> false

ages.member?("Spot")
=> false

ages.include?("Spot")
=> false

ages.has_key?("Spot")
=> false


Question 2
Starting with this string:
munsters_description = "The Munsters are creepy in a good way."

Convert the string in the following ways (code will be executed on original munsters_description above):

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.gsub!("M","m")
munsters_description.downcase!
munsters_description.upcase!


Question 3
We have most of the Munster family in our age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
=> {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}


Question 4
See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")
advice.match?("Dino")
# Not a perfect solution, as it would match any substring with Dino in it.


Question 5
Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


Question 6
How can we add he family pet "Dino" to our usual array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.append("Dino")
=> ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]

or

flintstones << "Dino"
=> ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]


Question 7
In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

We could have used either Array#concat or Array#push to add Dino to the family.

How can we add multiple items our array? (Dino and Hoppy)
flintstones.push("Dino", "Hoppy")
flintstones.append("Dino", "Hoppy")
# push returns the array so we can chain
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))


Question 8
Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

...remove everything starting from "house".

advice.slice!(0..38)
=> "Few things in life are as important as "

advice.slice!(0, advice.index('house'))
=> "Few things in life are as important as "

As a bonus, what happens if you use the String#slice method instead?

It does not mutate the string that is referencing the variable 'advice'.


Question 9
Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

statement.count('t')
statement.scan("t")
statement.include?("t")


Question 10
Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

title.center(40)


=end