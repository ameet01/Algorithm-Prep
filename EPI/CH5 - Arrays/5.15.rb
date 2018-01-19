

def random_subset(n, k)
  hash = {}

  (0...k).each do |i|
    random_index = rand(i...n)

    random_index_mapped = hash[random_index] || random_index
    index_mapped = hash[i] || i

    hash[random_index] = index_mapped
    hash[i] = random_index_mapped
  end
  
  return hash.select {|z,v| (0...k).include?(z) }.values
end

p random_subset(5, 4)