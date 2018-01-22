

#get lca when nodes have pointers


#find depth of each node
#find difference of depths
#traverse deepest node up
#traverse both up until they equal

def find_lca_with_parents(node1, node2)
  one = depth(node1)
  two = depth(node2)

  diff = (one - two).abs

  if one > two
    diff.times do |i|
      two = two.parent
    end
  else
    diff.times do |i|
      one = one.parent
    end
  end


  until one == two
    one = one.parent
    two = two.parent
  end

  two
end


def depth(node)
  result = 0

  until node == nil
    node = node.parent
    result += 1
  end

  result
end