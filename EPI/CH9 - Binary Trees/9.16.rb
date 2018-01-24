



#construct right_sibling


class TreeNode
  attr_accessor :val, :left, :right, :right_sibling
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
    @right_sibling = nil
  end
end

def right_sibling(tree)
  queue = [tree]

  until queue.empty?
    node = queue.shift

    node.left.right_sibling = node.right if node.left && node.right
    node.right.right_sibling = node.right_sibling.left if node.right_sibling && node.right

    queue.push(node.left) if node.left
    queue.push(node.right) if node.right
  end

  tree
end


root = TreeNode.new(100)
root.left = TreeNode.new(5)
root.right = TreeNode.new(15)
root.left.left = TreeNode.new(11)
root.left.right = TreeNode.new(8)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(-1)
root.right.left.right = TreeNode.new(5)
root.left.right.left = TreeNode.new(3)


p right_sibling(root)