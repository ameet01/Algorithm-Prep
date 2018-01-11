

#brute force
def binary_search_tree_checker(tree_node)
  stack = [[tree_node, nil, nil]]

  until stack.empty?
    node, parent_val, side = stack.pop

    return false if node.val > parent_val && side == 'left'
    return false if node.val < parent_val && side == 'right'

    stack.push([node.left, node.val, 'left']) if node.left
    stack.push([node.right, node.val, 'right']) if node.right
  end

  true
end


#solution
def binary_search_tree_checker(tree_node)
  stack = []
  stack.push([tree_node, -Float::INFINITY, Float::INFINITY])

  until stack.empty?
    node, lower_bound, upper_bound = stack.pop

    return false if node.val <= lower_bound
    return false if node.val >= upper_bound

    if node.val < lower_bound
      lower_bound = node.val
    end

    stack.push([node.left, lower_bound, node.val]) if node.left
    stack.push([node.right, node.val, upper_bound]) if node.right
  end

  return true
end

def binary_search_tree_checker(root, lower_bound = -Float::INFINITY, upper_bound = Float::INFINITY)
  return true if !root
  return false if root.value >= upper_bound || root.value <= lower_bound
  return binary_search_tree_checker(root.left, lower_bound, root.value) && binary_search_tree_checker(root.right, root.value, upper_bound)
end