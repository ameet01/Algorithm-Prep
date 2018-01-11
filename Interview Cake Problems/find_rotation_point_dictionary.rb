

  words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'zed',
    'zez',
    'asymptote',  # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
    'monkey'
]



#BRUTE FORCE
def find_rotation_point(words)
  alphabet = ('a'..'z').to_a
  
  (0...words.length - 1).each do |idx|
    if(alphabet.index(words[idx][0]) > alphabet.index(words[idx+1][0]))
      return idx + 1
    end
  end
end

#Solution
def find_rotation_point1(words)
  start = 0
  last = words.length - 1

  first_word = words[0]

  while start < last
    middle = (start + last) / 2

    if words[middle] >= first_word
      start = middle 
    elsif words[middle] < first_word
      last = middle 
    end

    if start + 1 == last
      return last
    end
    
  end
end

p find_rotation_point1(words)