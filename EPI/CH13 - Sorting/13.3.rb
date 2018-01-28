

def smallest_nonconstructible_value(array)
  array.sort!

  value = 0

  array.each do |i|
    if i > value + 1
      break
    end
    value += i
  end

  value + 1
end


p smallest_nonconstructible_value([12,2,1,15,2,4])