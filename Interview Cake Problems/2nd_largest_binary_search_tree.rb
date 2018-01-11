


def second_largest(root)
  current = root

  while current
    if current.right && !current.right.left && !current.right.right
      return current.value
    end

    if current.left && !current.right
      second_current = current.left
      while second_current
        return second_current.value if second_current.right == nil
        second_current = second_current.right
      end
    end

    current = current.next
  end
end