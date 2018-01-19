

def reverse_words_in_sentence(sentence)
  first = 0
  last = sentence.length - 1

  while first < last
    sentence[first], sentence[last] = sentence[last], sentence[first]
    first += 1
    last -= 1
  end

  beginning_index = 0

  (0..sentence.length).each do |i|
    if sentence[i] == ' ' || i == sentence.length
      first = beginning_index
      last = i - 1

      while first < last
        sentence[first], sentence[last] = sentence[last], sentence[first]
        first += 1
        last -= 1
      end
      beginning_index = i + 1
    end
  end

  sentence
end

p reverse_words_in_sentence('hello my name is ameet')