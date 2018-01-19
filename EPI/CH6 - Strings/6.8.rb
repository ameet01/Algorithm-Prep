def look_and_say(n)
  result = ['1']
  n.times do |time|
    result << next_str(result.last)
  end
  result
end

def next_str(str)
  result = ''

  index = 0

  while index < str.length
    count = 0

    while str[index] == str[index + 1]
      count += 1
      index += 1
    end
    count += 1

    result += count.to_s + str[index]
    index += 1
  end

  result
end


p look_and_say(4)