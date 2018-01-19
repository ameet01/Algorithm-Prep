

def spreadsheet_encoding(string)
  result = 0

  string.chars.each do |char|
    result = (result * 26 + (char.ord - 'A'.ord + 1))
  end

  result
end


p spreadsheet_encoding('A')