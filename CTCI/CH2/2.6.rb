#Palindrome

#Brute force

class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end

class LinkedList
  def self.palindrome(head)
    result = Node.new(nil, nil)
    reversed = head

    until reversed == nil
      node1 = Node.new(reversed.val, result)
      result = node1
      reversed = reversed.nextnode
    end
  
    until head == nil || result == nil
      if head.val != result.val
        return false
      end
      head = head.nextnode
      result = result.nextnode
    end

    true
  end
  
    def self.palindrome2(head)
      stack = []
      starter = head
      runner = head

      until runner.nextnode == nil || runner.val == nil
        stack.unshift(starter.val)
        runner = runner.nextnode.nextnode
        starter = starter.nextnode
      end

      if runner.val != nil
        starter = starter.nextnode
      end

      index = 0

      until starter == nil
        if(starter.val != stack[index])
          return false
        end
        starter = starter.nextnode
        index = index + 1
      end

      true
	  end
end


node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node4 = Node.new(1, node3)
node5 = Node.new(0, node4)




p LinkedList.palindrome2(node5)