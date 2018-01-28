

#generate balanced parentheses

def generate_balanced_parentheses(num_pairs)
  result = []
  dfs!(num_pairs, num_pairs, result, '')
  result
end

def dfs!(num_left, num_right, result, path)
  if num_right == 0
    result.push(path)
    return
  end

  if num_left > 0
    dfs!(num_left - 1, num_right, result, path + '(')
  end

  if num_left < num_right
    dfs!(num_left, num_right - 1, result, path + ')')
  end
  
end



p generate_balanced_parentheses(3)