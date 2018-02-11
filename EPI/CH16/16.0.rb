

def find_maximum_subarray(array)
  current_sum = max_sum = array[0]

  (1...array.length).each do |i|
    current_sum = [array[i], current_sum + array[i]].max
    max_sum = [max_sum, current_sum].max
    p [current_sum, max_sum]
  end

  max_sum
end

p find_maximum_subarray([3,7,3,1,-5,3,-6,2,7])