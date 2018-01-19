

class MaxQueue
  def initialize
    @store = []
    @maxes = []
  end

  def enqueue(item)
    @store.push(item)
    until @maxes.length == 0 || @maxes[-1] >= item
      @maxes.pop
    end
    @maxes.push(item)
    item
  end

  def dequeue
    val = @store.shift
    if @maxes[0] == val
      @maxes.shift
    end
    val
  end

  def max
    @maxes.first
  end
end


q = MaxQueue.new

q.enqueue(4)
q.enqueue(6)
q.enqueue(6)
q.enqueue(0)
q.enqueue(7)
q.dequeue
q.dequeue


p q.max
p q