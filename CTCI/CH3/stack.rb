class Stack
  def initialize
    @store = []
  end
  
  def push(el)
    @store.push(el)
  end
  
  def pop
    value = @store.last
    @store.pop
    return value
  end
  
  def peek
    @store.last
  end
  
  def empty
    @store.empty?
  end
  
  def length
    @store.length
  end
end