

#compute LCA in a BST

def lca(root, node1, node2)

  while root.val < node1.val || root.val > node2.val
    while root.val < node1.val
      root = root.right
    end
    while root.val > node2.val
      root = root.left
    end
  end

  root
end



class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end


root = TreeNode.new(19)
root.left = TreeNode.new(7)
root.right = TreeNode.new(43)
root.left.left = TreeNode.new(3)
root.left.right = TreeNode.new(11)
root.right.left = TreeNode.new(23)
root.right.right = TreeNode.new(47)
root.left.left.left = TreeNode.new(2)
root.left.left.right = TreeNode.new(5)
root.left.right.right = TreeNode.new(17)
root.left.right.right.left = TreeNode.new(13)
root.right.left.right = TreeNode.new(37)
root.right.right.right = TreeNode.new(53)
root.right.left.right.left = TreeNode.new(29)
root.right.left.right.right = TreeNode.new(41)
root.right.left.right.left.right = TreeNode.new(31)



p lca(root, root.right.left.right, root.right.right)

