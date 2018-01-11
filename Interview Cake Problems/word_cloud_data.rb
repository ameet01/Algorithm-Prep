

def split_words(sentence)
  alphabet = ('a'..'z').to_a

  words = []

  beginning_index = 0

  (0..sentence.length).each do |i|
    if sentence[i] == ' ' || i == sentence.length
      words << sentence[beginning_index..i-1]
      beginning_index = i + 1
    end
  end

  words
end

def word_cloud_data(sentence)
  array = split_words(sentence)

  hash = Hash.new(0)

  array.each do |i|
    hash[i.downcase] += 1
  end

  hash
end

p word_cloud_data('hello there good sir Hello')