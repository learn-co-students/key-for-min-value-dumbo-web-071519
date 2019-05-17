# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(name_hash)
    values = []
    
    name_hash.collect do |key, value|
      values.push(value)
    end
    values 

    i = 0
    z = 1
    for z in 1..(values.size-1) do 
      if values[i] < values[z]
        i = i   
      else 
        i = z
      end 
    end
    
    name_hash.collect do |key, value|
      if value = values[i]
        return key 
      end 
    end
end

hash = {:blake => 500, :ashley => 2, :adam => 1}
key_for_min_value(hash)
