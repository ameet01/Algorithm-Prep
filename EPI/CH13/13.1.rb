

#intersection of two arrays


def intersection(array1, array2)
  i = 0
  j = 0
  result = []

  while i < array1.length && j < array2.length
    if array1[i] == array2[j] 
      if i != 0 && array1[i] != array1[i-1]
        result.push(array1[i]) 
      end
      i += 1
      j += 1
    elsif array1[i] < array2[j]
      i += 1
    elsif array1[i] > array2[j]
      j += 1
    end
  end

  result
end

a1 = [2,3,3,5,5,6,7,7,8,13]
a2 = [5,5,6,8,8,9,10,10]

p intersection(a1, a2)