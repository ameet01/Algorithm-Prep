


def merge_arrays(arr1, arr2)
  if arr1.length == 0 || arr2.length == 0
    return arr1 + arr2
  end
  
  index1 = 0
  index2 = 0

  result = []

  until index1 >= arr1.length || index2 >= arr2.length
    if arr1[index1] < arr2[index2]
      result << arr1[index1]
      index1 += 1
    elsif arr2[index2] < arr1[index1]
      result << arr2[index2]
      index2 += 1
    else
      result << arr1[index1]
      result << arr2[index2]
      index1 += 1
      index2 += 1
    end
  end

  result + arr1[index1..-1] + arr2[index2..-1]
end





p merge_arrays([1,4,6,8,13,19], [2,6,8,14,29])