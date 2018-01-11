

def product(array)
  if array.length < 2
    raise 'Need two numbers for products'
  end
  
  result = []

  product = 1
  array.each_with_index do |i, j|
    result[j] = product
    product *= i
  end

  product = 1
  (array.length-1).downto(0).each do |j|
    result[j] *= product
    product *= array[j]
  end

  result
end


p product([1,2,6,4])