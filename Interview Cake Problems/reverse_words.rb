
#Brute
# def reverse_words(sentence)
#   array = sentence.split(' ')

#   first = 0
#   last = array.length - 1

#   while first < last
#     array[first], array[last] = array[last], array[first]
#     first += 1
#     last -= 1
#   end

#   array.join(' ')
# end

#Solution

def reverse_words(sentence)
  first = 0
  last = sentence.length - 1

  while first < last
    sentence[first], sentence[last] = sentence[last], sentence[first]
    first += 1
    last -= 1
  end
 
  beginning_of_word = 0

  (0..sentence.length).each do |index|
    if sentence[index] == ' ' || index == sentence.length
      first = beginning_of_word
      last = index - 1
      while first < last
        sentence[first], sentence[last] = sentence[last], sentence[first]
        first += 1
        last -= 1
      end
      beginning_of_word = index + 1
    end
  end

  sentence
end


p reverse_words('find you will pain only go you recordings security the into if')