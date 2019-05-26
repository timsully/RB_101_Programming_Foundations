# Question 1
# What do you expect to happen when the greeting variable is referenced in the last line of the code below?
if false
  greeting = "hello world"
end

greeting

=begin
greeting is nil here, and no "undefined method or local variable" exception is thrown. Typcially, when you reference an uninitialized variable, Ruby will raise an exception, stating that it's undefined. However, when you intilialize a local variable within an if block, even if that block doesn't get executed, the variable is initialized to nil.
=end