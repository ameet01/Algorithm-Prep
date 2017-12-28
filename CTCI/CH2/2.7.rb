#Intersection

class Node
	attr_accessor :val, :nextnode
	def initialize(val, nextnode)
		@val = val
		@nextnode = nextnode
	end
end


def intersection(ll1, ll2)
  return nil if ll1 == nil || ll2 == nil

  ll1length = 0
  ll2length = 0

  ll1header = ll1.head
  ll2header = ll2.head

  ll1tail = nil
  ll2tail = nil

  until ll1 == nil
    ll1length = ll1length + 1
    ll1 = ll1.next
  end
  ll2tail = ll1

  until ll2 == nil
    ll2length = ll2length + 1
    ll2 = ll2.next
  end
  ll2tail = ll2 

  diff_in_length = (ll1length - ll2length).abs

  if ll1length < ll2length
    diff_in_length.times do |i|
      ll2header = ll2header.next
    end
  else
    diff_in_length.times do |i|
      ll1header = ll1header.next
    end
  end

  until ll1header == nil 
    if ll1header.next.val == ll2header.next.val
      return llheader.next.val
    end
    ll1header = ll1header.next
    ll2header = ll2header.next
  end

  return nil
end

node1 = Node.new(0, nil)
node2 = Node.new(1, node1)
node3 = Node.new(2, node2)
node4 = Node.new(1, node3)
node5 = Node.new(0, node4)