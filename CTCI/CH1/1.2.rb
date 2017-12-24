#Check Permutation




def permutation1(str1, str2)
  return false if str1.length != str2.length

  str1.split('').sort == str2.split('').sort
end


def permutation2(str1, str2)
  return false if str1.length != str2.length

  array = [0] * 128

  str1.split('').each do |i|
    array[str1[i].ord] += 1
  end

  str2.split('').each do |i|
    array[str2[i].ord] -= 1
  end

  array.all?{ |i| i == 0 }
end

p permutation1('asdf', 'fdsa')
p permutation2('asdf', 'fsda')