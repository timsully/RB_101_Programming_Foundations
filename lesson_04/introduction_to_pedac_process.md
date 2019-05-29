# Introduction to the PEDAC Process
| P   | Understand the Problem  |
|---|---|
| E  | Examples / Test Cases  |
| D  | Data Structure  |
| A  | Algorithm  |
| C  | Code  |


#### P - [Understand the] Problem
Understanding the problem has three steps.

1. Read the problem description.
2. Check test cases, if any.
3. If any part of the problem is  unclear, ask the interviewer or problem requester to clarify the matter.

Process for problem given below:

```
Problem:

Given a string, write a method change_me which returns the same string but with all the words in it that are palindromes uppercased.

change_me("We will meet at noon") == "We will meet at NOON"
change_me("No palindromes here") == "No palindromes here"
change_me("") == ""
change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
```

- After reading the problem you're trying to solve, some items may need clarification, so ask as many questions as you find necessary

  - What is a palindrome?
  - Should the words in the string remain the same if they already use uppercase
  - How should I deal with empty strings provided as input
  - Can I assume that all inputs are strings?
  - Should I consider letter case when deciding whether a word is a palindrome?
  - Do I need to return the same string object or an entirely new string?
  
- Always verify your assumptions either by looking at the test cases or by asking the interviewer


<!-- pagebreak -->
- identify what the explicit requirements are, write them down, and then repeat the process for the implicit requirements
<!-- pagebreak -->
- the rules should encapsulate all the explicit and implicit requirements in the problem

Try to work through the "understand the problem" part of this problem on your own, and write the input, output, and rules for it.

```
# PROBLEM

Given a string, write a method `palindrome_substrings` which returns all the substrigns from a given string which are palindromes. Consider palindrome words are case sensitive.

Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
```

Questions you might have?
- What is a palindrome?
- What is a substring?
- Will inputs always be strings?
- What does it mean to treat palindrome words case-sensitively?

```
input: string
output: string (not the same object)
rules:
    Explicit requirements:
      - every palindrome in the string must be converted to uppercase. (Reminder: a palindrome is a word that reads the same forwards and backward).
      - Palindrome words should be case sensitive, meaning "abBA" is not a palindrome.
      - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

    Implicit requirements:
      - the returned string shouldn't be the same string object.
```

##### Data Structure / Algorithm

```
Problem:

Given a string, write a method `palindrome_substrings` which returns all the substrings from a given string which are palindromes. Consider palindrome words case sensitive.

Test cases:

palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []
```

Questions I have about the above problem are:
1. Will this string return a new String object or mutate the original string that was given?
2. Will input always be strings?
3. Is an empty string a palindrome? No.
4. How do I handle empty strings?
5. Should words remain the same if they already maintain uppercase? (Not a palindrome.)

##### Input & Output & Rules (Explicit/Implicit)
```
input: string
output: returns an array of substrings which are palindromes

rules:
  Explicit requirements:
    - Palindrome words are case sensistive
    - Given a string
    - returns all substrings from a given string which are palindromes
    - method is given a string

  Implicit requirements:
    - Will we returning a new string or an array?
    - returned string shouldn't be the same string object?
```

Then approach the algorithm portion where you write it out:

```
Algorithm:
  - initialize a result variable to an empty array
  - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long.
  - loop through the words in the substring_arr array.
  - if the word is a palindrome, append it to the result array
  - return the result array
```

The approach written above is challenging. It does not tackle finding all the substrings for a given string.

The correct approach would be to return to the algorithm and expand it to include a sub-algorithm that focuses on the substrings method we will write. To find the right algorithm, you can simplify the problem by taking a small concrette exmaple and us it to determine how you will approach the problem. (Mental model?)

One way to solve the problem would be to use two loops: An outer loop that tracks the index of the first letter of each substring, and an inner loop that tracks the index of the last letter of each substring.

```
- create an empty array called `result` that will contain all the required substrings
- initialize variable start_substring_idx and assign 0 to it
- initialize variable end_substring_idx and assign value of start_substring_idx + 1 to it.
- Enter loop which will break when start_substring_idx is equal to str.size
  - Within that loop enter another loop that will break if end_substring_idx is equal to str.size
    - append to the result array part of the string frmo start_substring_idx to end_substring_idx
    - increment `end_substring_idx` by 1.
  - end the inner loop
  - increment `start_substring_idx` by 1.
  - reassign `end_substring_idx` to `start_substring_idx += 1`
- end outer loop
- return `result` array
```

```
def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == str.size
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end
```

Write a method to check for a palindrome:

```
Inside the is_palindrome? method, check whether the string value is equal to its reversed value. You can use the String#reverse method.

def is_palindrome?(strt)
  str == str.reverse
end
```

Complete pseudocode for this problem:
```
input: a string
output: an array of substrings
rules: palindrome words should be case sensitive, meaning "abBA" is not a palindrome

Algorithm:
  substrings method
  =================
  - create an empty array called `result` which will contain all the required substrings
  - initialize variable start_substring_idx and assign 0 to it.
  - initialize variable end_substring_idx and assign value of start_substring_idx + 1 to it
  - Enter loop which will break when start_substring_idx is equal
      to str.size - 1
    - Within that loop enter another loop which will break if
      end_substring_idx is equal to str.size
      - append to the result array part of the string from
        start_substring_idx to end_substring_idx
      - increment `end_substring_idx` by 1.
    - end the inner loop
    - increment `start_substring_idx` by 1.
    - reassign `end_substring_idx` to `start_substring_idx += 1`
  - end outer loop
  - return `result` array


  is_palindrome? method
  =====================
  - check whether the string value is equal to its reversed value. You can use the String#reverse method.


  palindrome_substrings method
  ============================
  - initialize a result variable to an empty array
  - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long.
  - loop through the words in the substring_arr array.
    - if the word is a palindrome, append it to the result array
  - return the result array
```

Code for this(what's above) with all the helper methods:

```
def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == (str.size - 1)
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end
```

- Note that you don't need to write all your pseudocode before you start coding

Dense solution to writing the substrings method:

```
def substrings(str)
  result = []
  0.upto(str.size - 2).each do |start_idx|
    (start_idx + 1).upto (str.size -1) do |end_idx|
      result << str[start_idx..end_idx]
    end
  end
  result
end
```

The main takeaway is that you need to write a complete algorithm for a problem, including all the hard parts(like the substrings method).