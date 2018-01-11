
def get_random(floor, ceiling)
  rand(floor..ceiling)
end

def in_place_shuffle(array)
  return array if array.length < 2

  last_index = array.length - 1

  (0...array.length).each do |index|
    random = rand(index..last_index)

    if random != index
      array[random], array[index] = array[index], array[random]
    end
  end

  array
end




p in_place_shuffle([2,5,4,1])