

#Is an anonymous letter constructible?

def anonymous_letter(anonymous_text, magazine_text)
  hash = Hash.new(0)

  anonymous_text.each_char do |i|
    hash[i] += 1 if i != ' '
  end

  magazine_text.each_char do |i|
    if hash.key?(i)
      hash[i] -= 1 
    end
  end

  hash.values.all? {|i| i <= 0}
end

p anonymous_letter('tttddd', 'tttdd')