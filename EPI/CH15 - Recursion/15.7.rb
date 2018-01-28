

# generate palindromic decompositions

def palindromic_decompositions(string)
  result = []
  dfs!(string, 0, [], result)
  result
end

def dfs!(string, index, path, result)
  if index == string.length
    result.push(path) 
    return
  end
  
  (index+1..string.length).each do |i|
    prefix = string[index...i]
    if prefix == prefix.reverse
      dfs!(string, i, path + [prefix], result)
    end
  end
end


p palindromic_decompositions ('3239595')