#Queue via Stacks

require_relative 'stack'

def StackSort(stack)
  temp_stack = Stack.new

  until stack.empty
    temp = stack.pop
    
    until temp_stack.length == 0 || temp_stack.peek > temp
      stack.push(temp_stack.pop)
    end
    temp_stack.push(temp)
  end

  until temp_stack.empty
    stack.push(temp_stack.pop)
  end

  return stack
end

stack = Stack.new
stack.push(4)
stack.push(7)
stack.push(1)
stack.push(11)
stack.push(-100)
StackSort(stack)
p stack
