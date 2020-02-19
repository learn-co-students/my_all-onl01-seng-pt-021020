require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i]) #yielding each element in the array to the block
    i += 1
  end #When this code is run and it hits the yield line, it is going to send whatever is passed in as the argument to the block.

  if block_return_values.include?(false)
    false
  else
    true
  end
end
