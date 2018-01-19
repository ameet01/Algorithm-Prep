 
class ListNode
  attr_accessor :val, :next
  def initialize(value)
    @val = value
    @next = nil
  end
end
 
 def remove_duplicates(head)
  pointer = head

  until pointer == nil
    next_node = pointer.next

    while next_node && next_node.val == pointer.val
      next_node = next_node.next
    end

    pointer.next = next_node
    pointer = next_node
  end

  head
 end


l1 = ListNode.new(2)
l1.next = ListNode.new(2)
l1.next.next = ListNode.new(8)
l1.next.next.next = ListNode.new(8)
l1.next.next.next.next = ListNode.new(4)
l1.next.next.next.next.next = ListNode.new(1)

p remove_duplicates(l1)