
class ListNode
  attr_accessor :val, :next
  def initialize(value)
    @val = value
    @next = nil
  end
end

def even_odd_merge(head)
  evens = ListNode.new(nil)
  odds = ListNode.new(nil)
  even_head = evens
  odd_head = odds
  turn = false

  while head
    if turn == false
      odds.next = head
      odds = odds.next
    elsif turn == true
      evens.next = head
      evens = evens.next
    end
    head = head.next
    turn = !turn
  end

  even_head = even_head.next
  odd_head = odd_head.next

  odds.next = nil
  evens.next = odd_head

  even_head
end



l1 = ListNode.new(1)
l1.next = ListNode.new(2)
l1.next.next = ListNode.new(3)
l1.next.next.next = ListNode.new(4)
l1.next.next.next.next = ListNode.new(5)
l1.next.next.next.next.next = ListNode.new(6)

p even_odd_merge(l1)