#Palindrome Permutaiton

#brute force solution
def palindrome_permutation(string)
  string = string.downcase

  hash = Hash.new(0)

  string.split('').each do |char|
    hash[char] += 1 if(char != ' ')
  end

  hash.values.count{|i| i % 2 != 0} <= 1
end

p palindrome_permutation('Tact Coa')