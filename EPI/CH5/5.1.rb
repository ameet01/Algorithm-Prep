#My naive solution:
# def dutch(array, pivot_index)
#   smaller = array.select{|i| i < array[pivot_index]}
#   equal = array.select{|i| i == array[pivot_index]}
#   larger = array.select{|i| i > array[pivot_index]}
  
#   (smaller + equal + larger)
# end

# dutch([0,1,2,0,2,1,1], 2)






#O(n)
# def dutch(array, pivot_index)
#   pivot = array[pivot_index]
  
#   smaller = 0
  
#   (0...array.length).each do |i|
#     if array[smaller] < pivot
#       array[i], array[smaller] = array[smaller], array[i]
#       smaller += 1
#     end
#   end
  
#   larger = array.length - 1
  
#   (array.length-1).downto(0).each do |i|
#     break if array[i] < pivot
    
#     if array[i] > pivot
#       array[i], array[larger] = array[larger], array[i]
#       larger -= 1
#     end
#   end
  
#   array
# end

# dutch([0,1,2,0,2,1,1], 3)


def dutch(array, pivot_index)
    pivot = array[pivot_index]
    
    pointer = 0
    smaller = 0
    larger = array.length - 1
    
    while pointer < larger
      if array[pointer] < pivot
        array[smaller], array[pointer] = array[pointer], array[smaller]
        smaller += 1
        pointer += 1
      elsif array[pointer] == pivot
        pointer += 1
      elsif array[pointer] > pivot
        array[larger], array[pointer] = array[pointer], array[larger]
        larger -= 1
      end
    end
    
    array
  end
  
  dutch([0,1,2,0,2,1,1], 3)
  
  

















