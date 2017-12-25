#Zero Matric

#brute force

def zero_matrix(array)
  rows = []
  columns = []

  (0...array.length).each do |i|
    (0...array.length).each do |j|
      if array[i][j] === 0
        rows << i
        columns << j
      end
    end
  end

  (0...array.length).each do |i|
    (0...array.length).each do |j|
      if rows.include?(i) || columns.include?(j)
        array[i][j] = 0
      end
    end
  end

  p array
end

zero_matrix([[1,2,3,4],[1,2,3,0],[1,2,3,4],[0,2,3,4]])