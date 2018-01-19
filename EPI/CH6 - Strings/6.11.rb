
def snake_string(string)
  result = []
  arr1 = []
  arr2 = []
  arr3 = []

  (1...string.length).step(4) do |i|
    arr1[i] = string[i]
  end

  (0...string.length).step(2) do |i|
    arr2[i] = string[i]
  end

  (3...string.length).step(4) do |i|
    arr3[i] = string[i]
  end

  result << arr1
  result << arr2
  result << arr3
  p arr1
  p arr2
  p arr3
  result
end

p snake_string('Hello_World!')