#Stack of Plates

class Stack
  def initialize
    @store = []
    @min_stack = []
  end
  
  def push(el)
    @store.push(el)
    
    if @min_stack.empty? || @min_stack.last > el
      @min_stack.push(el)
    end
  end
  
  def pop
    value = @store.last
    @store.pop
    
    if @min_stack.last == value
      @min_stack.pop
    end
  end
  
  def peek
    @store.last
  end
  
  def min
    @min_stack.last
  end
  
  def empty
    @store.empty?
  end
  
  def length
    @store.length
  end
end


class StackOfPlates
  def initialize(max_stack_length)
    @max_stack_length = max_stack_length
    @stacks = [Stack.new]
  end

  def push(element)
    @stacks.each do |stack|
      if stack.length < @max_stack_length
        stack.push(element)
        return element
      end
    end
    
    if @stacks.last.length == @max_stack_length
      @stacks.push(Stack.new)
      @stacks.last.push(element)
    end
  end

  def pop
    value = @stacks.last.peek
    @stacks.last.pop
    if @stacks.last.length == 0
      @stacks.pop
    end
    return value
  end

  def popAt(index)
    @stacks[index].pop
  end

  def current_stack
    @stacks.last
  end
end

