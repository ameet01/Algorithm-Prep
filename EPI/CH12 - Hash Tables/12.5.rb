

#nearest repeated elements in an array

def nearest_repeated_elements(array)
  hash = Hash.new {|k,v| k[v] = Array.new}

  min = Float::INFINITY
  min_word = ""

  array.each_with_index do |i, j|
    hash[i] << j
    if hash[i].length > 1 && (hash[i][-1] - hash[i][-2]).abs < min
      min = (hash[i][-1] - hash[i][-2]).abs
      min_word = i
    end
  end

  min_word + " #{min}"
end

p nearest_repeated_elements("all work and no play makes for no work no fun and no results".split(' '))