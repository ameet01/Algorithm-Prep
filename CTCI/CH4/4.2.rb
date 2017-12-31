#Minimal Tree

def minimal_tree(array)
  middle = array.length / 2
  node = Node.new(array[middle])

  if(array.length > 1)
    left = array[0...middle]
    right = array[middle+1..-1]

    node.left = minimal_tree(left) if left.length > 0
    node.right = minimal_tree(right) if right.length > 0
  end

  node
end

class Node
  attr_accessor :children, :visited, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @visited = false
  end
end


