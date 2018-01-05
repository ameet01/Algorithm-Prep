require_relative 'heap'

def k_largest_elements(array, k)
  heap = BinaryMinHeap.new

  array.each do |item|
    heap.push(item)
    heap.extract if heap.count > k
  end

  heap.store
end


p k_largest_elements([1,2,3,6,3,88,22,11], 4)