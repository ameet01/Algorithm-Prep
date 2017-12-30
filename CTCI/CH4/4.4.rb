#Check Balanced


def check_balanced(root)
  queue = Queue.new
  queue.enqueue(root)

  until queue.empty?

  end
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
  attr_accessor :left, :right, :visited
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @visited = false
  end
end