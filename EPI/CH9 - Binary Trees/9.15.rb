
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end


def exterior_nodes(tree)
  return if !tree
  result = [tree.val]
  leftEdges(tree.left, true, result)
  rightEdges(tree.right, true, result)
  result
end

def leftEdges(tree, boolean, result)
  return if !tree
  result << tree.val if boolean == true || (!tree.left && !tree.right)
  leftEdges(tree.left, true, result)
  leftEdges(tree.right, false, result)
end

def rightEdges(tree, boolean, result)
  return if !tree
  rightEdges(tree.right, true, result)
  rightEdges(tree.left, false, result)
  result << tree.val if boolean == true || (!tree.left && !tree.right)
end



root = TreeNode.new(100)
root.left = TreeNode.new(5)
root.right = TreeNode.new(15)
root.left.left = TreeNode.new(11)
root.left.right = TreeNode.new(8)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(1)
root.left.right.left = TreeNode.new(3)


p exterior_nodes(root)