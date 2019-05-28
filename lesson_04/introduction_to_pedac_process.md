# Introduction to the PEDAC Process
| P   | Understand the Problem  |
|---|---|
| E  | Examples / Test Cases  |
| D  | Data Structure  |
| A  | Algorithm  |
| C  | Code  |


#### P - [Understand the] Problem
Understanding the problem has three steps.

1. Read the problem description
2. Check test cases, if any.
3. If any part of the problem is  unclear, ask the interviewer or problem requester to clarify the matter.

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
output: an array of substrings
rules:
    Explicit requirements:
      - return only substrings which are palindromes
      - palindrome words should be case sensitive, meaning "abBA" is not a palindrome.
```

##### Algorithm portion written below
```
Algorithm:
  - initialize a result variable to an empty array
  - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long
  - loop through the words in the susbtring_arr array
  - if the word is a palindrome, append it to the result
  - return the result array
```

```
def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx = 1
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