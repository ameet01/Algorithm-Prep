#Buy and sell stock once


def stocks(array)
  min_price_so_far = Float::INFINITY
  profit = 0
  
  array.each do |price|
    max_profit = price - min_price_so_far
    profit = [max_profit, profit].max
    min_price_so_far = [price, min_price_so_far].min
  end
  
  profit
end


p stocks([310,315,275,295,260,270,290,230,255,250])