

def highest_product_of_3(array)
  raise 'array too short' if array.length < 3

  highest_product_of_3 = 0
  highest_product_of_2 = 0
  lowest_product_of_2 = 0
  highest = 0
  lowest = 0

  array.each do |num|
    if num * highest_product_of_2 > highest_product_of_3
      highest_product_of_3 = num * highest_product_of_2
    end

    if num * lowest_product_of_2 > highest_product_of_3
      highest_product_of_3 = num * lowest_product_of_2
    end

    if num * highest > highest_product_of_2
      highest_product_of_2 = num * highest
    end

    if num * lowest > highest_product_of_2
      highest_product_of_2 = num * lowest
    end

    if num * highest < lowest_product_of_2
      lowest_product_of_2 = num * highest
    end

    if num * lowest < lowest_product_of_2
       lowest_product_of_2 = num * lowest
    end

    highest = num if highest > num
    lowest = num if lowest < num
  end

  highest_product_of_3
end


p highest_product_of_3([-2, -4, 3, 4])