

#XOR to cancel out duplicates
def stolen_drone(array)
  
  unique_item = 0

  array.each do |id|
    unique_item ^= id
  end

  unique_item
end