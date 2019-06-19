# Practice Problem 6
# What is the return value of the following statement? Why?
['ant', 'bear', 'caterpillar'].pop.size

# Pop is called on the array which destructively removes the last element from the calling array and returns it. Size is being called on the return value by pop. Once we realize that size is evaluating the return value of pop(which is "caterpillar" aka 11).