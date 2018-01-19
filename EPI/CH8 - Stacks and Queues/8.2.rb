

def rpn_expression(string)
  stack = []

  string = string.split(',')

  string.each do |i|
    if i == '+'
      x = stack.pop
      y = stack.pop
      stack.push(x + y)
    elsif i == '-'
      x = stack.pop
      y = stack.pop
      stack.push(y - x)
    elsif i == '/'
      x = stack.pop
      y = stack.pop
      stack.push(y / x)
    elsif i == '*'
      x = stack.pop
      y = stack.pop
      stack.push(y * x)
    else
      stack.push(i.to_i)
    end
  end

  stack[-1]
end


p rpn_expression('3,4,+,2,*,1,+')