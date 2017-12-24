#One Away

#brute force
def one_away(str1, str2)
  hash1 = Hash.new(0)
  max = [str1.length, str2.length].max

  str1.split('').each do |i|
    hash1[i] += 1
  end

  str2.split('').each do |i|
    hash1[i] += 1
  end

  hash1.values.count{|i| i % 2 == 0} == (max - 1)
end

p one_away('pale', 'ple')