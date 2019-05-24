# Question 4
# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# My Answer
# There is a vast difference between the two. Both reflect a different operation. The << aka shovel operator will perform a mutation on whatever object it is called on and append the values to it. In this case, the rolling_buffer1 method appends(adds) a new_element to the end of the buffer array whereas the rolling_buffer2 method concatenates the [new_element] onto the input_array and is assigned to the buffer variable.

# Launch School Answer
# Yes there is a difference. While both methods have the same return value, in the first implementation, the input argument called buffer will be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have the input array that they pass in be different once that call returns. In other implementation, rolling_buffer2 will not alter the caller's input argument.