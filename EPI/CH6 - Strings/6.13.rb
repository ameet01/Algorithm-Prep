

# first occurrence of a substring


#ROBIN KARP HASHING

def is_substring(str1, str2)
  substring_hash = str2.hash
  length = str2.length

  (0...str1.length).each do |i|
    break if i > str1.length - str2.length
    sub = str1[i...i+length]
    return true if substring_hash == sub.hash
  end

  false
end

p is_substring('wowimamazing', 'mamaz')