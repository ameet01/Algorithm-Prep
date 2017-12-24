#Buy and sell stock once


def stocks(array)
  min = Float::INFINITY
  profit = 0

  array.each do |price|
    selltoday = price - min
    profit = [selltoday, profit].max
    min = [min, price].min
  end

  profit
end

p stocks([310,315,275,295,260,270,290,230,255,250])