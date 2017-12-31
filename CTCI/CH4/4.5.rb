#Validate BST

def validate_bst?(node, min, max)
  return true if !node
  return false if (min && node.value <= min) || (max && node.value > max)
  return false if !validate_bst?(node.left, min, node.value) || !validate_bst?(node.right, node.value, max)
  return true
end