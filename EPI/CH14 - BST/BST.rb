
class TreeNode
  attr_accessor :key, :left, :right
  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  attr_accessor :root
  def initialize
    @root = nil
  end

  def insert(key)
    if @root.nil?
      @root = TreeNode.new(key)
    else
      head = @root
      previous = nil
      until head.nil?
        if key <= head.key
          previous = head
          head = head.left
        else
          previous = head
          head = head.right
        end
      end
      if key <= previous.key 
        previous.left = TreeNode.new(key)
      else
        previous.right = TreeNode.new(key)
      end
    end
  end

  def minimum_node(node)
    current = node
    until current.left.nil?
      current = current.left
    end

    return current
  end

  def inorder(node)
    return if !node
    inorder(node.left)
    p node.key
    inorder(node.right)
  end

  def delete(node, key)
    return if !node
    if node.key < key
      delete(node.right, key)
    elsif node.key > key
      delete(node.left, key)
    else
      if !node.left && !node.right
        parent = get_parent(@root, node.key)
        if parent.left && parent.left.key == key
          parent.left = nil
        else
          parent.right = nil
        end
      end

      if node.left && !node.right
        parent = get_parent(@root, node.key)
        if parent.left && parent.left.key == key
          parent.left = node.left
        else
          parent.right = node.left
        end
      end

      if !node.left && node.right
        parent = get_parent(@root, node.key)
        if parent.left && parent.left.key == key
          parent.left = node.right
        else
          parent.right = node.right
        end
      end

      if node.left && node.right
        minimum = minimum_node(node.right)
        temp = node.key
        node.key = minimum.key
        minimum.key = temp
        delete(@root, minimum.key)
      end
    end

    node
  end

  def get_parent(node, key)
    return if !node
    return node if node.left && node.left.key == key
    return node if node.right && node.right.key == key
    if node.key < key
      get_parent(node.right, key)
    else
      get_parent(node.left, key)
    end
  end
end



BST = BinarySearchTree.new
BST.insert(5)
BST.insert(4)
BST.insert(3)
BST.insert(7)
BST.insert(9)
BST.delete(BST.root, 5)

p BST