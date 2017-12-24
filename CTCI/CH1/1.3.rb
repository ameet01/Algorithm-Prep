#URLify

def urlify(string, max)
  string = string[0...max]
  string = string.gsub(' ', "%20")
  string
end




def urlify2(string, max)
  string = string[0...max]

  i = 0

  while(i < string.split('').length)
    if string[i] == ' '
      string = string[0...i] + '%20' + string[i+1...string.length]
      p string
    else
      i += 1
    end
  end


  p string
end

p urlify2('Mr John Smith      ', 13)