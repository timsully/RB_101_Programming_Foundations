Kernel.puts("hello world")

=begin
# Notes from running Rubocop

run > rubocop rubocop.rb


---------------------------------
output:
$ rubocop hello.rb
Inspecting 1 file
C

Offenses:

hello.rb:1:13: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
Kernel.puts("hello world")
            ^^^^^^^^^^^^^

1 file inspected, 1 offense detected

---------------------------------

C stands for Convention, which means a convention was broken. Other possible 
offenses are W (warning), E (error), and F (fatal error).

Next, are the list of offenses, but if there was more than one they would appear
sequentially in the order in which the offending code occurs in the inspected file.

The first part of the offense tells you where the offense occured: the file name, 
the line number, and the column number. Then C again for convention, then the
offense message. After that, it shows you the actual piece of code where the
offense occurred.

To find out which cop complained, we can do this:
rubocop rubocop.rb --format offenses

=end

