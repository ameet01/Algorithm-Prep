#Queue via Stacks

require_relative 'stack'

class QueueWithStacks
  def initialize
    @new_stack = Stack.new
    @old_stack = Stack.new
  end

  def add(element)
    @new_stack.push(element)
  end

  def remove
    shift_stacks
    return @old_stack.pop
  end
  
  def peek
    shift_stacks
    return @old_stack.peek
  end

  def shift_stacks
    if @old_stack.length == 0
      until @new_stack.length == 0
        @old_stack.push(@new_stack.pop)
      end
    end
  end
end


queue = QueueWithStacks.new

queue.add(3)
queue.add(4)
queue.add(5)
p queue
queue.remove
p queue
p queue.peek
