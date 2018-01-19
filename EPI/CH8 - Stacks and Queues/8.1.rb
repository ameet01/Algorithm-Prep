

class MaxStack
  def initialize
    @store = []
    @maxes_cache = []
  end

  def push(value)
    @store.push(value)
    if @maxes_cache.length == 0
      @maxes_cache.push([value, 1])
    elsif @maxes_cache.length > 0 && @maxes_cache[-1][0] == value
      @maxes_cache[-1][1] += 1
    elsif @maxes_cache.length > 0 && @maxes_cache[-1][0] < value
      @maxes_cache.push([value, 1])
    end
    value
  end

  def pop
    raise EmptyError if empty?
    value = @store.pop
    if value == @maxes_cache[-1][0]
      @maxes_cache[-1][1] -= 1
      if @maxes_cache[-1][1] == 0
        @maxes_cache.pop
      end
    end
    value
  end

  def max
    @maxes_cache[-1][0]
  end

  def pop_max
    maximum = max

    pointer = -1

    until @store[pointer] == maximum
      pointer -= 1
    end

    @store[-1], @store[pointer] = @store[pointer], @store[-1]

    pop
  end
  
  def empty?
    @store.length == 0
  end
end


maxstack = MaxStack.new

maxstack.push(1)
maxstack.push(1)
maxstack.push(3)
maxstack.push(4)
maxstack.push(10)
maxstack.push(10)
maxstack.push(0)
maxstack.push(2)


p maxstack.max



p maxstack