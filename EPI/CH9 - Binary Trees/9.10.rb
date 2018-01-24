

#find successor in in order traversal

#check if it has a rightsubtree
#if it does, look at the left most item in that subtree for the successor(next iterated item in the traversal)
#if it does not, then we keep looking at parent until the iterated node is the left child of its parent



def find_successor(node)
  if node.right
    node = node.right
    until !node.left
      node = node.left
    end
    return node
  end

  until node.parent.left == node || !node.parent
    node = node.parent
  end

  node.parent
end