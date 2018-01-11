class QueueWithTwoStacks
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def enqueue(value)
    @in_stack.push(value)
  end

  def dequeue
    flip!
    return nil if @out_stack.empty?
    value = @out_stack.pop
    value
  end

  def flip!
    if @out_stack.empty?
      until @in_stack.empty?
        @out_stack.push(@in_stack.pop)
      end
    end
  end
end