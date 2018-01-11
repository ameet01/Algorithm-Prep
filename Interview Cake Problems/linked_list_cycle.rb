

def contains_cycle(node)
  slow = node
  fast = node

  until fast == nil || fast.next == nil
    slow = slow.next
    fast = fast.next.next

    return true if fast == slow
  end

  return false
end