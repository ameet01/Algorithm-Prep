

#is binary search tree


def is_binary_search_tree(tree)
  queue = [[tree, -Float::INFINITY, Float::INFINITY]]

  until queue.empty?
    node, lower_bound, upper_bound = queue.shift

    return false if !(lower_bound..upper_bound).include?(node.val)

    queue.push([node.left, lower_bound, node.val]) if node.left
    queue.push([node.right, node.val, upper_bound]) if node.right
  end

  true
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



p is_binary_search_tree(root)
