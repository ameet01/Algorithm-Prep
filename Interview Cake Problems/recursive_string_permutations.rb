

def recursive_string_permutations(string)
  return [string] if string.length < 2
  first = string[0]
  result = []

  recursive_string_permutations(string[1..-1]).each do |perm|
    (0..perm.length).each do |i|
      result << perm[0...i] + first + perm[i..-1]
    end
  end

  result
end

p recursive_string_permutations('hel')