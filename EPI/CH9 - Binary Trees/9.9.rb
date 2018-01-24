
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

#kth node in an in order walk




def kth_node_in_order(tree, k)
  until !tree
    if tree.left
      left_size = number_of_nodes_under(tree.left) 
    else
      left_size = 0
    end

    if left_size + 1 < k
      k -= left_size + 1
      tree = tree.right
    elsif left_size + 1 == k
      return tree
    else
      tree = tree.left
    end
  end

  nil
end



def number_of_nodes_under(node)
  count = 1
  return 0 if !node
  count += number_of_nodes_under(node.left)
  count += number_of_nodes_under(node.right)
  count
end

root = TreeNode.new(100)
root.left = TreeNode.new(5)
root.right = TreeNode.new(15)
root.left.left = TreeNode.new(11)
root.left.right = TreeNode.new(8)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(1)
root.left.right.left = TreeNode.new(3)

# p print_nodes(root)
p kth_node_in_order(root, 5)