#Route Between Nodes


def route_between_nodes(node1, node2)
  queue = Queue.new
  queue.enqueue(node1)

  until queue.empty?
    node = queue.dequeue
    return true if node == node2
    if(!node.children.empty?)
      node.children.each do |child|
        queue.enqueue(child) if child.visited == false
        child.visited = true
      end
    end
  end

  return false
end



class Queue
  def initialize
    @store = []
  end
  
  def enqueue(el)
    @store.push(el)
  end
  
  def dequeue
    value = @store.first
    @store.shift
    return value
  end

  def peek
    @store[0]
  end
  
  def empty?
    @store.empty?
  end
  
  def length
    @store.length
  end
end


class Node
  attr_accessor :children, :visited
  def initialize(value)
    @value = value
    @children = []
    @visited = false
  end
end


root = Node.new(1)
node1 = Node.new(2)
node2 = Node.new(3)
root.children.push(node1)
root.children.push(node2)


node3 = Node.new(4)
node4 = Node.new(5)
node1.children.push(node3)
node1.children.push(node4)

p route_between_nodes(root, node4)