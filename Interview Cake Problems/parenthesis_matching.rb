

def parenthesis_matching(string, index_of_paren)
  open = 0

  (index_of_paren...string.length).each do |i|
    if string[i] == '('
      open += 1
    elsif string[i] == ')'
      if open == 0
        return i
      else
        open -= 1
      end
    end
  end

end

p parenthesis_matching("hello(wei)ewifoj", 6)