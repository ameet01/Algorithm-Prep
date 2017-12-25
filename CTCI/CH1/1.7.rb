# Rotate Matrix

# def rotate_matrix(array)
#   original = [0, array.length - 1]
#   shift = [0, array.length - 1]

#   result = Array.new(array.length) {Array.new(array.length, 0)}

#   (0...array.length).each do |i|
#     (0...array.length).each do |j|
#       result[i + shift[0]][j + shift[1]] = array[i][j]
#       shift[0] += 1
#       shift[1] -= 1
#       if (shift[0] - shift[1]) == (array.length + 1)
#         original = [original[0] - 1, original[1] - 1]
#         shift = original
#       end
#     end
#   end

#   p result
# end

# def rotate_matrix(matrix)
#   n = matrix.length

#   (n/2).times do |layer|
#     final = n - layer - 1
#     (layer..final-1).each do |i|
#       offset = i - layer
#       # save top
#       top = matrix[layer][i]
#       # left to top
#       matrix[layer][i] = matrix[final - offset][layer]
#       # bottom to left
#       matrix[final - offset][layer] = matrix[final][final - offset]
#       # right to bottom
#       matrix[final][final - offset] = matrix[i][final]
#       # top to right
#       matrix[i][final] = top
#     end
#   end

#   return matrix
# end


def rotate_matrix(array)
  array.transpose.map{|row| row.reverse}
end

p rotate_matrix([[4,5,3,3],[1,2,3,1],[2,2,1,0],[8,1,1,0]])