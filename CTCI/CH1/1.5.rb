#One Away

#brute force
def one_away(str1, str2)
  hash = Hash.new(0)

  str1.chars do |i|
    hash[i] += 1
  end

  str2.chars do |i|
    hash[i] -= 1
  end

  hash.values.count{ |i| i > 0 } < 2
end

p one_away('pale', 'ple')