

#sorted array, find if something is in there

array = [1,2,3,4,5,6,8,9,14,16,19]


def binary_search(array, target, first, last)
  while first < last
    mid = (first + last) /2
    if target < array[mid]
      return binary_search(array, target, first, mid - 1)
    elsif target > array[mid]
      return binary_search(array, target, mid + 1, last)
    else
      return mid
    end
  end

  - 1
end


p binary_search(array, 19, 0, array.length)