

#def merge two sorted arrays


def merge_two_sorted_arrays(a1, a2)
  i = a1.length - 1
  j = a2.length - 1
  write_index = a1.length + a2.length - 1

  while i >= 0 && j >= 0
    if a1[i] > a2[j]
      a1[write_index] = a1[i]
      i -= 1
    else
      a1[write_index] = a2[j]
      j -= 1
    end
    write_index -= 1
  end

  a1
end


p merge_two_sorted_arrays([1,2,4,5,7,9,25,65,101],[2,3,4,7,7,11,13])
