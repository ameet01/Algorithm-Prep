#sample online data


def online_random_sample(array, k)
  sample = array.slice(0...k)
  
  num_seen_so_far = k

  (0...array.length).each do |i|
    num_seen_so_far += 1

    random = rand(0...num_seen_so_far)

    if random < k
      sample[random] = array[i]
    end
  end

  sample
end

p online_random_sample([5,3,1,7,8], 2)