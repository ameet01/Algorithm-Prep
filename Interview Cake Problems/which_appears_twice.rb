

def which_appears_twice(array)
  n = array.length - 1

  total_sum = (n**2 + n) / 2
  array_sum = array.reduce(:+)

  array_sum - total_sum
end

p which_appears_twice([1,2,3,4,5,6,7,8,9,10])