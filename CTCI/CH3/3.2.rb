class Stack
  def initialize
    @stack = []
    @min_stack = []
  end

  def length
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def push(ele)
    @stack.push(ele)
    
    if @min_stack.empty? || @min_stack[-1] > ele
      @min_stack.push(ele)
    end
  end

  def pop
    value = @stack[-1]
    @stack.pop
    
    if @min_stack[-1] == value
      @min_stack.pop
    end

    value
  end

  def peek
    @stack.last
  end
  
  def min
    @min_stack.last
  end
end