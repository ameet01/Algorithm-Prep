#Compute next permutation

def next_permutation(array)
  back = array.length - 1

  until array[back-1] < array[back]
    back -= 1
  end

  first_swap_index = back - 1

  back = array.length - 1

  until array[back] > array[first_swap_index]
    back -= 1
  end

  second_swap_index = back

  array[first_swap_index], array[second_swap_index] = array[second_swap_index], array[first_swap_index]

  first = first_swap_index + 1
  last = array.length - 1

  while first < second_swap_index
    array[first], array[last] = array[last], array[first]
    first += 1
    last -= 1
  end

  array
end

p next_permutation([6,2,1,5,4,3,0])