# Question 4
# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

# Deletes at the index specifed in the parameter or nil if index is
# out of range.
numbers.delete_at(1)

# Deletes all items equal to parameter. If no matching item is found,
# returns the last deleted item or nil.
numbers.delete(1)