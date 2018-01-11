

def kth_to_last(head, k)
  raise ArgumentError if k < 1
  slow = head
  fast = head

  k.times do |i|
    fast = fast.next
  end

  until fast == nil
    slow = slow.next
    fast = fast.next
  end

  slow
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

p kth_to_last(head, 2)