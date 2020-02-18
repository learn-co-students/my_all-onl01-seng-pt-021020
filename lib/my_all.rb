require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
    block_return_values << yield(collection[i]) #when this code is run and reaches the yield line, it is going to send whatever is passed in as the argument to the block. 
    i += 1 
  end
  
  if block_return_values.include?(false)
    false
  else
    true 
  end
end

my_all?([1, 2, 3]) {|i| i < 2}
