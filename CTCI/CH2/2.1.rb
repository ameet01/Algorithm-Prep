class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end


def remove_dups(head)
  currentNode = head
  hash = Hash.new(0)
  previous = Node.new(nil, nil)

  until currentNode == nil
    if(hash[currentNode.val] == true)
      previous.nextnode = currentNode.nextnode
    else
      hash[currentNode.val] = true
      previous = currentNode
    end
    currentNode = currentNode.nextnode
  end

  head
end


node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node6 = Node.new(2, node3)
node4 = Node.new(1, node6)
node5 = Node.new(0, node4)


remove_dups(node5)