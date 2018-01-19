

def run_length_encoding(string)
  current_letter = string[0]
  count = 0
  result = ''

  i = 0

  while i < string.length
    if string[i] == current_letter 
      count += 1
      i += 1
    else
      result += count.to_s + current_letter
      current_letter = string[i]
      count = 1
      i += 1
    end
  end

  result += count.to_s + current_letter

  result
end

def run_length_decoding(string)
  result = ''

  i = 0

  while i < string.length
    if i % 2 != 0
      str = string[i] * string[i-1].to_i
      result += str
    end
    i += 1
  end

  result
end


p run_length_encoding('aaabcccaa')
p run_length_decoding('3e4f2e')