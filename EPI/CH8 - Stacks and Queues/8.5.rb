

def examine_buildings_with_sunset(sequence)
  stack = []

  sequence.each_with_index do |i, j|
    until stack.length == 0 || stack[-1][0] >= i
      stack.pop
    end
    stack.push([i, j])
  end

  stack
end

p examine_buildings_with_sunset([3,7,8,9,2,1,4,3,2,8,0])