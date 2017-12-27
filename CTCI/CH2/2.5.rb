#Sum Lists


def sum_lists(node1, node2)
  result = LinkedListNode.new
  pointer = result

  current1 = node1
  current2 = node2

  until current1.val == nil || current2.val == nil
    sum = current1.val + current2.val
    pointer.next = LinkedListNode.new
    pointer.next.val = sum % 10
    pointer = pointer.next
    current1.next.val += (sum / 10)

    current1 = current1.next
    current2 = current2.next
  end

  result
end