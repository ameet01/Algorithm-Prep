class TreeNode
  attr_accessor :key, :left, :right
  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end
end



def generate_all_binary_trees(num_nodes)
  result = []
  array = (1..3).to_a
  dfs!(array, result, [], 0, num_nodes)
  result
end

def dfs!(array, result, path, index, num_nodes)
  return if num_nodes == 0

  node = TreeNode.new(0)

  (0...num_nodes).each do |left_nodes|
    right_nodes = num_nodes - 1 - left_nodes
    left_subtrees = dfs!(array, result, path)
  end
end


p generate_all_binary_trees(3)