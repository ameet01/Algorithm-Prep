#Is Unique


#Brute Force


def unique(string)
  hash = Hash.new

  string.split('').each do |i|
    return false if hash[string[i]]
    hash[string[i]] = true
  end

  true
end

p unique('asdf')