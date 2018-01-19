#Sample offline data

def random_sampling(k, array)
  (0...k).each do |i|
    r = rand(i..array.length - 1)
    array[i], array[r] = array[r], array[i]
  end
  array
end

random_sampling(7, [5,2,4,7,8,9,1])