


class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

#recursive
def lowest_common_ancestor(root, node1, node2)
  return root if root == node1 || root == node2 || root == nil
  left = lowest_common_ancestor(root.left, node1, node2)
  right = lowest_common_ancestor(root.right, node1, node2)

  if left && right
    return root
  else
    return left || right
  end
end


#iterative
def lowest_common_ancestor2(root, node1, node2)
  stack = [root]
  hash = {root: nil}

  until hash.key?(node1) && hash.key?(node2)
    node = stack.pop
    if node.left
      hash[node.left] = node
      stack.push(node.left)
    end
    if node.right
      hash[node.right] = node
      stack.push(node.right)
    end
  end

  pointer = node1
  array = []

  until !pointer
    array.push(pointer)
    pointer = hash[pointer]
  end

  start = node2

  until array.include?(start)
    start = hash[start]
  end

  start
end

root = TreeNode.new(314)
root.left = TreeNode.new(6)
root.right = TreeNode.new(6)
root.left.left = TreeNode.new(7)
root.left.right = TreeNode.new(2)
root.right.right = TreeNode.new(7)
root.right.left = TreeNode.new(2)
root.left.right.right = TreeNode.new(3)
root.right.left.left = TreeNode.new(3)
root.right.left.right = TreeNode.new(4)


p lowest_common_ancestor2(root, root.right.left.left, root.left.right)


