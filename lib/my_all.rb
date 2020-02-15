require 'pry'

def my_all?(collection)
  block_return_values = []
 i = 0
  while i < collection.length
  
  block_return_values << yield(collection[i]) #yields to the block at every itiration
    i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
  end
  if block_return_values.include?(false)
    false
  else 
    true
  end
  
end


my_all?([1,2,3,]) {|i| i < 2}