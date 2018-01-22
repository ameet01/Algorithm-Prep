class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

#sum the root-leaf-paths in a binary tree

#DFS down each path, passing in the value
#when at a leaf, put all the numbers together and store in a result array
#use result array to compute sum


def sum_root_to_leaf_paths(tree)
  stack = [tree]
  result = []
  hash = Hash.new

  until stack.empty?
    node = stack.pop

    if !node.left && !node.right
      pointer = node
      array = [node.val]
      until !hash[pointer]
        array.unshift(hash[pointer].val) 
        pointer = hash[pointer]
      end
      result << array
    end

   if node.right
     stack.push(node.right) 
     hash[node.right] = node
   end
   if node.left
      stack.push(node.left)
      hash[node.left] = node
   end
  end

  return result.map { |i| i.join.to_i(2) }.reduce(:+)
end


def sum_root_to_leaf_paths2(tree)
  result = []
  dfs!(tree, result, [])
  return result.map { |i| i.join.to_i(2) }.reduce(:+)
end

def dfs!(node, result, path)
  if !node.left && !node.right
    result.push(path + [node.val])
    return
  end

  dfs!(node.left, result, path + [node.val]) if node.left
  dfs!(node.right, result, path + [node.val]) if node.right
end


root = TreeNode.new(1)
root.left = TreeNode.new(1)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(0)
root.left.right = TreeNode.new(1)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(0)
root.left.right.left = TreeNode.new(1)


p sum_root_to_leaf_paths2(root)