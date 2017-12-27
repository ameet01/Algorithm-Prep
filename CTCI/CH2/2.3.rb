# Delete middle node

#brute force
# def delete_middle(node)
#   until node.next == nil
#     node.val = node.next.val
#     if(node.next.next == nil)
#       node.next = nil
#     else
#       node = node.next
#     end
#   end
# end

def delete_middle(node)
  return false if node.next == nil || node == nil

  node.val = node.next.val
  node.next = node.next.next
  return true
end