#Remove Dups

# Brute Force
def remove_dups(head)
  currentNode = head
  hash = Hash.new(0)
  previous = LinkedListNode.new

  until currentNode.next == nil
    if(hash[currentNode.val])
      previous.next = currentNode.next
    else
      hash[currentNode.val] = true
      previous = currentNode
    end
    currentNode = currentNode.next
  end

  head
end