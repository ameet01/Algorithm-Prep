

#pre order traversal - iterative


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
  p root.val
  print_nodes(root.left)
  print_nodes(root.right)
end


#iterative

def print_nodes2(root)
  stack = [root]
  result = []

  while stack
    node = root.pop
    result.push(node.val)
    stack.push(node.right) if node.right
    stack.push(node.left) if node.left
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