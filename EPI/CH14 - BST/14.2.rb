


#find the first key greater than a given value in a BST


def first_key_greater_than_given_value(tree, value)
  first_so_far = nil

  until !tree
    if tree.val > value
      first_so_far = tree
      tree = tree.left
    else
      tree = tree.right
    end
  end

  first_so_far
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



p first_key_greater_than_given_value(root,45)
