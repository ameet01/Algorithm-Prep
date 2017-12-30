#List of Depths


class DepthLister
  def initialize
    @depths = []
  end

  def build_linked_lists(node, depth = 0)
    @depths << LinkedList.new if @depths[depth] == nil
    @depths[depth].append(node)
    built_linked_lists(node.left, depth + 1) if !node.left.nil?
    built_linked_lists(node.right, depth + 1) if !node.right.nil?
    @depths
  end
end


