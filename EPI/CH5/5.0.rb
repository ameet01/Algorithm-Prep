


#put all evens at the start of array, all odds at the end

def even_odd(array)
  start = 0
  last = array.length - 1
  
  while start < last
    if array[start] % 2 == 0
      start += 1
    else
      array[start], array[last] = array[last], array[start]
      last -= 1
    end
  end
  
  array
end

even_odd([1,2,6,4,7,8,9,5,2,46,21])