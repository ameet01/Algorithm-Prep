# Partition

def partition(node, partition)
  LinkedListNode head = node
  LinkedListNode tail = node

  unless node.val == nil
    if node.val < partition
      node.next = head
      head = node
    else
      tail.next = node
      tail = node
    end
    node = node.next
  end

  tail.next = null
  
  return head
end

def partition(linked_list, val)
  lo = LinkedList.new
  hi = LinkedList.new
  current = linked_list.head

  while current
    if current.data >= val
      hi.append(current.data)
    else
      lo.append(current.data)
    end
    current = current.next
  end

  return lo + hi
end