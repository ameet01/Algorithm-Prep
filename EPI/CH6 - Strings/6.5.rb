#test palindromicity

def palindromicity(string)
  alphabet = ('a'..'z').to_a
  string = string.downcase
  first = 0
  last = string.length - 1

  while first < last
    if alphabet.include?(string[first]) == false
      first += 1
      next
    end

    if alphabet.include?(string[last]) == false
      last -= 1
      next
    end

    return false if string[first] != string[last]
    first += 1
    last -= 1
  end

  true
end

p palindromicity('Able was I, ere I saw Elba!')

