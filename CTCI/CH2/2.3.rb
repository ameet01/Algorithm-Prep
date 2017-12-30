class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end


def delete_middle(node)
  return false if node.nextnode == nil || node == nil
  node.val = node.nextnode.val
  node.nextnode = node.nextnode.nextnode
  return true
end


node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node6 = Node.new(2, node3)
node4 = Node.new(1, node6)
node5 = Node.new(0, node4)


delete_middle(node6)
delete_middle(node5)

p node5