
#merge two sorted lists

class ListNode
  attr_accessor :val, :next
  def initialize(value)
    @val = value
    @next = nil
  end
end


def merge_lists(l1, l2)
  dummy = ListNode.new(nil)
  head = dummy

  current1 = l1
  current2 = l2

  until current1 == nil || current2 == nil
    if current1.val <= current2.val
      dummy.next = current1
      current1 = current1.next
    else
      dummy.next = current2
      current2 = current2.next
    end
    dummy = dummy.next
  end

  dummy.next = current1 || current2

  head.next
end


l1 = ListNode.new(2)
l1.next = ListNode.new(5)
l1.next.next = ListNode.new(8)

l2 = ListNode.new(1)
l2.next = ListNode.new(7)
l2.next.next = ListNode.new(10)


p merge_lists(l1, l2)