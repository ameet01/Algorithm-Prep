

class TreeNode
  attr_accessor :left, :right, :val
  def initialize(val)
    @left = nil
    @right = nil
    @val = val
  end
end

def binary_tree_depth_order(tree)
  queue = [[tree, 0]]

  depths = []

  until queue.empty?
    node, depth = queue.shift

    depths[depth] = [] if !depths[depth]
    depths[depth] << node.val

    queue.push([node.left, depth + 1]) if node.left
    queue.push([node.right, depth + 1]) if node.right
  end

  depths
end


root = TreeNode.new(0)
root.left = TreeNode.new(1)
root.right = TreeNode.new(4)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.right.left = TreeNode.new(9)
root.right.right = TreeNode.new(10)
root.left.left.left = TreeNode.new(2)
root.left.left.right = TreeNode.new(4)
root.left.right.left = TreeNode.new(3)
root.left.right.right = TreeNode.new(7)
root.right.left.left = TreeNode.new(8)
root.right.left.right = TreeNode.new(9)
root.right.right.left = TreeNode.new(1)
root.right.right.right = TreeNode.new(0)
root.right.right.right.right = TreeNode.new(14)
root.right.right.right.right.left = TreeNode.new(19)

p binary_tree_depth_order(root)