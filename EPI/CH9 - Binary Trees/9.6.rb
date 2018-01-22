
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end



#check root-to-leaf path for specified sum

def specified_sum_root_to_leaf(tree, sum)
  result = []
  dfs!(tree, sum, [], result)
  result
end


def dfs!(node, sum, path, result)
  return if !node

  path += [node.val]
  if !node.left && !node.right && node.val == sum
    result << path
  end
  
  dfs!(node.left, sum - node.val, path, result)
  dfs!(node.right, sum - node.val, path, result) 
end

#iterative

def specified_sum_root_to_leaf2(tree, sum)
  stack = [[tree, []]]
  result = []

  

  until stack.empty?
    p stack.map{|i| [i[0].val, i[1]]}
    
    item = stack.pop
    node = item[0]
    array = item[1].dup
    
    array << node.val
  
    if !node.left && !node.right
      if array.reduce(:+) == sum 
        result << array
      end
    else
      stack.push([node.right, array]) if node.right
      stack.push([node.left, array]) if node.left
    end
  end

  result
end


root = TreeNode.new(10)
root.left = TreeNode.new(5)
root.right = TreeNode.new(15)
root.left.left = TreeNode.new(11)
root.left.right = TreeNode.new(8)
root.right.right = TreeNode.new(1)
root.right.left = TreeNode.new(1)
root.left.right.left = TreeNode.new(3)



p specified_sum_root_to_leaf2(root, 26)