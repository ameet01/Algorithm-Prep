


def find_anagrams(dictionary)
  hash = Hash.new {|k,v| k[v] = Array.new}

  dictionary.each do |i|
    hash[i.gsub(' ', '').chars.sort.join('')] << i
  end

  hash.values.select {|i| i.length >= 2}.flatten
end

p find_anagrams(['logarithmic', 'algorithmic', 'racecar', 'raccare', 'owl', 'loe'])