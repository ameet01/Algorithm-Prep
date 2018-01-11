require 'set'

def permutation_palindrome(string)
  set = Set.new

  (0...string.length).each do |i|
    if !set.include?(string[i])
      set.add(string[i])
    else
      set.delete(string[i])
    end
  end

  set.length < 2
end


p permutation_palindrome('aadaad')