
#A tree is "superbalanced" if the difference between the depths of any two leaf nodes is no greater than one.


#Use Depth-first-search(DFS) and push depths into an array

#DFS!
def balanced(tree_node)
  return nil if tree_node.nil?

  depths = []
  stack = []

  #keep track of depth number with the nodes inside the stack
  stack.push([tree_node, 0])

  until stack.empty?
    node = stack.pop
    node, depth = node

    if !node.left && !node.right
      if depths.include?(depth) == false
        depths.push(depth)
      end
      return false if depths.length > 2
      return false if depths.length == 2 && (depths[0] - depths[1]).abs > 1
    else
      if node.left
        stack.push([node.left, depth + 1])
      end
      if node.right
        stack.push([node.right, depth + 1])
      end
    end
  end

  true
end


