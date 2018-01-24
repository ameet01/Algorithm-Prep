

#Compute lowest common ancestor in binary tree

require 'set'

def LCA(node1, node2)
  set = Set.new

  while node1 || node2
    if node1
      return node1 if set.include?(node1)
      set.add(node1)
      node1 = node1.parent
    end

    if node2
      return node2 if set.include?(node2)
      set.add(node2)
      node2 = node2.parent
    end
  end

  raise 'Not in same tree'
end