#Check Balanced


def check_height(node)
  return -1 if node == nil
  left_height = check_height(node.left)
  return false if left_height == false
  right_height = check_height(node.right)
  return false if right_height == false

  height_diff = left_height - right_height
  if height_diff.abs > 1
    return false
  else
    return [left_height, right_height].max + 1
  end
end


class Node
  attr_accessor :left, :right, :visited
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @visited = false
  end
end