

#create array from leaf nodes


class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end



#recursive
def leaf_nodes(tree)
  return [] if !tree
  return [tree.val] if !tree.left && !tree.right
  leaf_nodes(tree.left) + leaf_nodes(tree.right)
end

#iterative
def leaf_node2(tree)
  result = []
  stack = [tree]

  until stack.empty?
    node = stack.pop

    result << node.val if !node.left && !node.right

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
root.right.left.right = TreeNode.new(5)
root.left.right.left = TreeNode.new(3)


p leaf_node2(root)