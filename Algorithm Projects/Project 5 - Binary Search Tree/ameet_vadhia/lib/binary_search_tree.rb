# There are many ways to implement these methods, feel free to add arguments 
# to methods as you see fit, or to create helper methods.

require_relative 'bst_node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    if !@root
      @root = BSTNode.new(value) 
      return
    end

    BinarySearchTree.insert(@root, value)
  end

  def find(value, tree_node = @root)
    return nil if tree_node.nil?

    if value == tree_node.value
      return tree_node
    elsif value > tree_node.value
      find(value, tree_node.right)
    elsif value < tree_node.value
      find(value, tree_node.left)
    end
  end

  def delete(value)
    return @root = nil if @root.value == value
    node = find(value)
    parent = get_parent(value)

    if !node.left && !node.right
      replace_parents_child(parent, nil, value)
    elsif !node.left && node.right
      replace_parents_child(parent, node.right, value)
    elsif node.left && !node.right
      replace_parents_child(parent, node.left, value)
    elsif node.left && node.right
      max_node = maximum(node.left)
      parent_of_max = get_parent(max_node.value)
      replace_parents_child(parent, max_node, value)
      if max_node.left
        temp = max_node.left
        replace_parents_child(parent_of_max, temp, max_node.value)
      else
        temp = max_node.right
        replace_parents_child(parent_of_max, temp, max_node.value)
      end
    end
  end

  def get_parent(value, parent = @root)
    return parent if parent.left.value == value || parent.right.value == value

    if value <= parent.value
      return parent.left.nil? ?
        nil :
        get_parent(value, parent.left)
    else
      return parent.right.nil? ?
        nil :
        get_parent(value, parent.right)
    end
  end

  def replace_parents_child(parent, item, value)
    parent.left = item if parent.left.value == value
    parent.right = item if parent.right.value == value
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    until tree_node.right.nil?
      tree_node = tree_node.right
    end
    tree_node
  end

  def depth(tree_node = @root)
    # max_depth = 0

    # stack = [[tree_node, 0]]

    # until stack.empty?
    #   node, depth = stack.pop

    #   if !node.left && !node.right
    #     max_depth = depth if depth > max_depth
    #   end

    #   stack.push([node.left, depth + 1]) if node.left
    #   stack.push([node.right, depth + 1]) if node.right
    # end

    # max_depth
    if tree_node.nil?
      return -1
    else 
      left_depth = depth(tree_node.left)
      right_depth = depth(tree_node.right)
  
      if left_depth > right_depth
        return left_depth + 1
      else
        return right_depth + 1
      end
    end
  end 

  def is_balanced?(tree_node = @root)
    depths = []
    stack = [[tree_node, 0]]

    until stack.empty?
      node, depth = stack.pop

      if !node.left && !node.right
        if !depths.include?(depth)
          depths.push(depth)
        end
        
        return false if depths.length > 2
        return false if depths.length == 2 && (depths[0] - depths[1]).abs > 1
      else
        stack.push([node.left, depth + 1]) if node.left
        stack.push([node.right, depth + 1]) if node.right
      end
    end

    return true
  end

  def in_order_traversal(tree_node = @root, arr = [])
    return [] if !tree_node
    self.in_order_traversal(tree_node.left) + [tree_node.value] + self.in_order_traversal(tree_node.right)
  end


  private
  # optional helper methods go here:

  def self.insert(node, value)
    return BSTNode.new(value) if !node

    if value < node.value
      node.left = BinarySearchTree.insert(node.left, value)
      # node.left.parent = node
    else
      node.right = BinarySearchTree.insert(node.right, value)
      # node.right.parent = node
    end

    node
  end

end
