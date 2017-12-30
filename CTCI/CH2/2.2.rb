class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end


def kth_to_last(head, k)
  currentNode = head
  
  k.times do |i|
    currentNode = currentNode.nextnode
  end
  
  until currentNode.nextnode == nil
    currentNode = currentNode.nextnode
    head = head.nextnode
  end
  
  return head
end


node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node6 = Node.new(2, node3)
node4 = Node.new(1, node6)
node5 = Node.new(0, node4)


kth_to_last(node5, 2)