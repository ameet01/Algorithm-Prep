

def reverse_linked_list(head)
  previous = nil
  current = head

  until current == nil
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end

  previous
end



class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end
end

head = LinkedListNode.new(1)
head.next = LinkedListNode.new(2)
head.next.next = LinkedListNode.new(3)
head.next.next.next = LinkedListNode.new(4)

p reverse_linked_list(head)