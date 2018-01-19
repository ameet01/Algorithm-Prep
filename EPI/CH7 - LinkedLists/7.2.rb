

class ListNode
  attr_accessor :val, :next
  def initialize(value)
    @val = value
    @next = nil
  end
end

def reverse_sublist(head, start, finish)
  d = dummy = head

  (start-1).times do |i|
    dummy = dummy.next
  end

  diff = finish - start

  previous = dummy
  dummy = dummy.next

  diff.times do |i|
    next_node = dummy.next
    dummy.next = next_node.next
    next_node.next = previous.next
    previous.next = next_node
    p d
  end

  d
end


l1 = ListNode.new(2)
l1.next = ListNode.new(5)
l1.next.next = ListNode.new(8)
l1.next.next.next = ListNode.new(3)
l1.next.next.next.next = ListNode.new(4)
l1.next.next.next.next.next = ListNode.new(1)

p reverse_sublist(l1, 1, 4)