

class ListNode
  attr_accessor :val, :next
  def initialize(value)
    @val = value
    @next = nil
  end
end



def cyclically_right_shift_list(head, k)
  length = 1
  pointer = head

  until pointer.next == nil
    length += 1
    pointer = pointer.next
  end

  index = k % length
  return head if index == 0
  
  pointer.next = head

  steps_to_head = length - index
  tail = pointer

  steps_to_head.times do |i|
    tail = tail.next
  end

  new_head = tail.next
  tail.next = nil
  return new_head
end

l1 = ListNode.new(2)
l1.next = ListNode.new(5)
l1.next.next = ListNode.new(8)
l1.next.next.next = ListNode.new(3)
l1.next.next.next.next = ListNode.new(4)
l1.next.next.next.next.next = ListNode.new(1)


p cyclically_right_shift_list(l1, 1)