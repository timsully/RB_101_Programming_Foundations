# Practice Problem 6
# Amend this array so that the names are all shortened to just the first three characters
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# loop through array to evaluate how big each string is per index and if its not equal to 3 characters in the string then pop characters of until it is equal to 3 characters in each string
flintstones.map! do |name|
    name[0,3]
end

# or
flintstones.map! { |name| name[0, 3] }