# See if linkedlist is a loop

class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end


def FindBeginning(head)
  starter = head
  runner = head

  while runner != nil || runner.next != nil
    starter = starter.next
    runner = runner.next.next
    if(starter == runner)
      break
    end
  end

  starter = head

  until starter == runner
    starter = starter.next
    runner = runner.next
  end

  return runner
end


#To nly check for just a loop, you use a starter and runner, and if they equal eachother eventually then there is a loop