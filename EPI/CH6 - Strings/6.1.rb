

def integer_to_string(num)
  is_negative = false
  is_negative = true if num < 0
  result = []

  num = num * -1 if is_negative

  while true
    result << ('0'.ord + (num % 10)).chr
    num /= 10
    break if num == 0
  end

  if is_negative
    '-' + result.reverse.join
  else
    result.reverse.join
  end
end


def string_to_integer(string)
  is_negative = true if string[0] == '-'
  num = 0

  if is_negative
    start = 1
  else
    start = 0
  end

  (start...string.length).each do |i|
    num = num * 10 + string[i].ord - '0'.ord
  end

  num
end



p string_to_integer('341')