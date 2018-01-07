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
    node = find(value, @root)
    parent = get_parent(value, @root) if node != @root
    @root = nil if @root.value = value

    if node.left.nil? && node.right.nil?
      if parent.right.value = value
        parent.right = nil 
      elsif parent.left.value = value
        parent.left = nil
      end
    end
  end

  def get_parent(value, tree_node = @root)
    return nil if tree_node.nil?

    if value == tree_node.left.value || value == tree_node.right.value
      return tree_node
    elsif value > tree_node.value
      get_parent(value, tree_node.right)
    elsif value < tree_node.value
      get_parent(value, tree_node.left)
    end
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    until tree_node.right.nil?
      tree_node = tree_node.right
    end
    tree_node
  end

  def depth(tree_node = @root)
    max_depth = 0

    stack = [[tree_node, 0]]

    until stack.empty?
      node, depth = stack.pop

      if !node.left && !node.right
        max_depth = depth if depth > max_depth
      end

      stack.push([node.left, depth + 1]) if node.left
      stack.push([node.right, depth + 1]) if node.right
    end

    max_depth
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
