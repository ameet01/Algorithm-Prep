


def stocks(array)
  if array.length < 2
    return 'Too short to calculate a buy/sell'
  end
  profit = 0
  min_so_far = Float::INFINITY

  array.each do |price|
    selling_price_today = price - min_so_far
    profit = [profit, selling_price_today].max
    min_so_far = [min_so_far, price].min
  end

  profit
end

p stocks([330,270,370,300,260,340,310,320,270,210,370])