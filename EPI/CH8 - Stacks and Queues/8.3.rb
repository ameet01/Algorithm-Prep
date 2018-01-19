#brackets well-formed


def is_well_formed(string)
  stack = []

  hash = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }

  string.each_char do |i|
    if hash.key?(i)
      stack.push(i)
    else
      if i == hash[stack[-1]]
        stack.pop
      else
        return false
      end
    end
  end

  return false if stack.length > 0
  true
end

p is_well_formed('[()[]{()()}]')