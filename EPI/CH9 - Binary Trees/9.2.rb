

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

#recursive
def binary_tree_is_symmetric(tree)
  return check_symmetry(tree, tree) 
end


def check_symmetry(node1, node2)
  return true if !node1 && !node2
  return false if !node1 || !node2
  return node1.val == node2.val && check_symmetry(node1.left, node2.right) && check_symmetry(node1.right, node2.left)
end


#iterative BFS
def binary_tree_is_symmetric2(tree)
  return true if !tree
  queue = [tree, tree]

  until queue.empty?
    one = queue.shift
    two = queue.shift

    next if !one && !two
    return false if !one || !two
    return false if one.val != two.val

    queue.push(one.left) 
    queue.push(two.right) 
    queue.push(one.right) 
    queue.push(two.left) 
  end

  true
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

p binary_tree_is_symmetric(root)
p binary_tree_is_symmetric2(root)


def symmetric(tree)
  return check_symmetry(tree.left, tree.right)
end


def check_symmetry(n1, n2)
  return true if !n1 && !n2
  return false if n1 && !n2
  return false if !n1 && n2

  return n1.val == n2.val && check_symmetry(n1.left, n2.right) && check_symmetry(n1.right, n2.left)
end