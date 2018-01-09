#Delete duplicates from a sorted array


def delete(array)
  index = 1

  (1...array.length).each do |i|
    if(array[index - 1] != array[i])
      array[index] = array[i]
      index += 1
    end
  end
  index
end


p delete([2,3,3,5,5,7,11,11,11,13])

