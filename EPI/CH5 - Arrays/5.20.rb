

def pascals(n)
  result = [[1],[1,1]]

  until result.length == n
    array = [1]
    (1...result.last.length).each do |i|
      array << result.last[i-1] + result.last[i]
    end
    array << 1
    result.push(array)
  end

  result
end

p pascals(5)