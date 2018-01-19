

#Compute all mnemonics for a phone number



def phone_mnemonics(digits)
  return [] if digits == ''
    
  mapping = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']
  
  solution = [""]
  
  for i in 0...digits.length
    digit = digits[i].to_i
    
    while solution[0].length == i
        combination = solution.shift
        mapping[digit].chars.each do |char|
            solution.push(combination + char)
        end
    end
  end
  
  solution
end


p phone_mnemonics('1049301')