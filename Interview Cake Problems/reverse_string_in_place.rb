

def reverse(string)
  first = 0
  last = string.length - 1

  while first < last
    string[first], string[last] = string[last], string[first]
    first += 1
    last -= 1
  end

  string
end

p reverse('hello')