

#test for palindromic permutations




def palindromic_permutations(str)
  hash = Hash.new(0)

  str.each_char do |i|
    hash[i] += 1
  end

  hash.values.count{|i| i % 2 != 0} <= 1
end

p palindromic_permutations('wowwwow')