# a => dd
# b => delete

def replace_and_remove(array)
  i = 0

  while i < array.length
    if array[i] == 'a'
      array[i] = 'd'
      array.insert(i, 'd')
      i += 2
    elsif array[i] == 'b'
      array.delete_at(i)
    else
      i += 1
    end
  end

  array
end

def replace_and_remove2(array)
  #delete b's, count a's
  a_count = 0
  write_index = 0

  array.each do |i|
    if i != 'b'
      array[write_index] = i
      write_index += 1
    end

    if i == 'a'
      a_count += 1
    end
  end
  p array
  write_index = write_index - 1
  last = array.length - 1

  (write_index).downto(0) do |i|
    if array[i] == 'a'
      array[last] = 'd'
      array[last - 1] = 'd'
      last -= 2
    else
      array[last] = array[i]
      last -= 1
    end
  end

  array
end


p replace_and_remove2(['a','j','d','b','a','a','b','b','a','d'])