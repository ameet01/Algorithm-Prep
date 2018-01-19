# Increment an abitraty-precision integer

# def plus_one(array)
#   (array.join.to_i + 1).to_s.split('').map(&:to_i)
# end


def plus_one(array)
  array[-1] += 1
  
  index = -1
  
  while array[index] == 10
    if array[index-1]
      array[index-1] += 1 
    else
      array.unshift(1)
    end
    array[index] = 0
    index -= 1
  end
  
  array
end


p plus_one([1,9,9])