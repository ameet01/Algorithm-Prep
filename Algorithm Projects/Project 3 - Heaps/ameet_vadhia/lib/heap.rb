class BinaryMinHeap
  attr_reader :store, :prc

  def initialize(&prc)
    @store = Array.new
    @prc = prc
  end

  def count
    @store.length
  end

  def extract
    val = @store[0]
    @store[0] = @store.pop
    BinaryMinHeap.heapify_down(@store, 0, &prc)
    val
  end

  def peek
    @store[0]
  end

  def push(val)
    @store.push(val)
    BinaryMinHeap.heapify_up(@store, count - 1, count, &prc)

    val
  end

  public
  def self.child_indices(len, parent_index)
    children = []
    num1 = 2*parent_index + 1
    num2 = 2*parent_index + 2
    children.push(num1) if num1 < len
    children.push(num2) if num2 < len
    return children
  end

  def self.parent_index(child_index)
    raise "root has no parent" if child_index == 0

    (child_index - 1 ) / 2
  end

  def self.heapify_down(array, parent_idx, len = array.length, &prc)
    # indexes = self.child_indices(len, parent_idx)
    # prc ||= Proc.new {|a,b| a <=> b}
    # until self.child_indices(len, parent_idx) == [] || (array[parent_idx] <= array[indexes[0]] && array[parent_idx] <= array[indexes[1]])
    #   if array[indexes[0]] < array[indexes[1]]
    #     array[indexes[0]], array[parent_idx] = array[parent_idx], array[indexes[0]]
    #     parent_idx = indexes[0]
    #     indexes = self.child_indices(len, parent_idx)
    #   else
    #     array[indexes[1]], array[parent_idx] = array[parent_idx], array[indexes[1]]
    #     parent_idx = indexes[1]
    #     indexes = self.child_indices(len, parent_idx)
    #   end
    #   p array
    # end

    # array

    prc ||= Proc.new { |a, b| a <=> b }
    children = self.child_indices(len, parent_idx)

    return array if children.all? { |child_idx| prc.call(array[parent_idx], array[child_idx]) <= 0 } || children.empty?

    if children.length == 1
      child_idx = children[0]
    else
      if prc.call(array[children[0]], array[children[1]]) <= 0
        child_idx = children[0]
      else  
        child_idx = children[1]
      end
    end

    array[parent_idx], array[child_idx] = array[child_idx], array[parent_idx]
    self.heapify_down(array, child_idx, len, &prc)
  end

  def self.heapify_up(array, child_idx, len = array.length, &prc)
    return array if child_idx == 0
    index = self.parent_index(child_idx)
    prc ||= Proc.new {|a,b| a <=> b}

    until child_idx == 0 || prc.call(array[child_idx], array[index]) >= 0
      array[child_idx], array[index] = array[index], array[child_idx]
      child_idx = index
      index = self.parent_index(child_idx) if child_idx != 0
    end

    array
  end
end
