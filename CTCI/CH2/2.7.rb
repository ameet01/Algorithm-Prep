#Intersection

class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end

class LinkedList
  def intersection(linkedlist)
    head = self.head

    until head.nextnode == nil
      head = head.nextnode
      until linkedlist.nextnode == nil
        
        linkedlist = linkedlist.nextnode
      end
    end
  end
end

node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node4 = Node.new(1, node3)
node5 = Node.new(0, node4)