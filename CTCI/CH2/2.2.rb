# kth to last element

#brute force
def kth_to_last(head, k)
  #two pointers!

  currentNode = head
  runner = head

  (k-1).times do |i|
    runner = runner.next
  end

  until runner.next == nil
    currentNode = currentNode.next
    runner = runner.next
  end

  currentNode.val
end