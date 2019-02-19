=begin
Locate the ruby documentation for methods File::path and File#path.
How are they different?

File::path - Returns the string representation of the path. (class method)

File.path("/dev/null") #=> "/dev/null"

File#path - Returns the pathname used to create file as a string. Does
            not normalize the name.

File.new("testfile").path #=> "testfile" (instance method)

Note:
Class methods are called on the class, while instance methods are called on objects.
=end

# Calls the class method File::path since we're calling it on the File class
puts File.path('bin')

# Calls the instance method File#path since we're calling it on an
# object of the File class, namely f.
f = File.new('my-file.txt')
puts f.path