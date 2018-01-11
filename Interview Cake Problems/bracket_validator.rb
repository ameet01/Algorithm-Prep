

def bracket_validator(string)
  stack = []
  
  hash = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }

  string.chars.each do |i|
    if hash[i]
      stack.push(i)
    end

    if hash.values.include?(i) && hash[stack.last] == i
      stack.pop
    elsif hash.values.include?(i) && hash[stack.last] != i
      return false
    end
      
    p stack
  end

  return false if stack.length > 0
  true
end

p bracket_validator('{ [ ]( )}')