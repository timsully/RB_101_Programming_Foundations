# Question 8
# One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

=begin
Did the family's data get ransacked? Why or why not?

My Answer
Yes, the grandfathers age was 402 which is not realistic.

Launch School Answer
What gets passed in the parameter list is not what it appears. Under the hood, ruby passes the object id of each item rather than the value of the parameter. The method internally stores these object id's in locally scoped(private to the method) variables (named per the method definition's parameter list).
=end