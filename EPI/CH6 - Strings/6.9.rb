

#roman numbers to decimal

def roman(str)
  str = str.upcase

  hash = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0

  (str.length - 1).downto(0) do |i|
    if i != str.length - 1 && hash[str[i+1]] > hash[str[i]] 
      result -= hash[str[i]] 
    else
      result += hash[str[i]]
    end
  end

  result
end

p roman('LVX')
