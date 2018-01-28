

#rebuild bst from preorder sequence



class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def rebuild_bst_from_preorder(preorder_sequence)
  return nil if preorder_sequence.length == 0

  first = preorder_sequence[0]
  index = 1
  (1...preorder_sequence.length).each do |i|
    if preorder_sequence[i] > first
      index = i
      break
    end
  end

  node = TreeNode.new(preorder_sequence[0])
  node.left = rebuild_bst_from_preorder(preorder_sequence[1...index])
  node.right = rebuild_bst_from_preorder(preorder_sequence[index..-1])
  node
end

p rebuild_bst_from_preorder([43,23,37,29,31,41,47,43])

