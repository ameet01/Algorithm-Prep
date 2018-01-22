

#in order traversal - iterative


class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

#recursive


def print_nodes(root)
  return if !root
  print_nodes(root.left)
  p root.val
  print_nodes(root.right)
end


#iterative

def print_nodes2(root)
  stack = []
  result = []

  while stack || root
    if root
      stack.push(root)
      root = root.left
    else
      root = stack.pop
      result.push(root.val)
      root = root.right 
    end
  end

  result
end

root = TreeNode.new(100)
root.left = TreeNode.new(5)
root.right = TreeNode.new(15)
root.left.left = TreeNode.new(11)
root.left.right = TreeNode.new(8)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(1)
root.left.right.left = TreeNode.new(3)

# p print_nodes(root)
p print_nodes2(root)