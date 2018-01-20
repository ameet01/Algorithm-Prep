

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def is_binary_tree_height_balanced(root)
  return true if !root
  
  left_depth = depth(root.left)
  right_depth = depth(root.right)

  return (left_depth - right_depth).abs <= 1 && is_binary_tree_height_balanced(root.left) && is_binary_tree_height_balanced(root.right)
end

def depth(root)
  return -1 if !root

  left_height = depth(root.left)
  right_height = depth(root.right)

  return [left_height, right_height].max + 1
end


root = TreeNode.new(0)
root.left = TreeNode.new(0)
root.right = TreeNode.new(0)
root.left.right = TreeNode.new(0)
root.left.left = TreeNode.new(0)
root.right.right = TreeNode.new(0)
root.right.left = TreeNode.new(0)
root.left.right.left = TreeNode.new(0)
root.left.right.right = TreeNode.new(0)
root.left.left.left = TreeNode.new(0)
root.left.left.right = TreeNode.new(0)
root.right.right.left = TreeNode.new(0)
root.right.right.right = TreeNode.new(0)


p is_binary_tree_height_balanced(root)