require_relative "heap"

class Array
  def heap_sort!
    prc ||= Proc.new { |a, b| b <=> a }

    (2..self.length).each do |i|
      BinaryMinHeap.heapify_up(self, i - 1, i, &prc)
    end

    (2..self.length).each do |i|
      self[self.length - i + 1], self[0] = self[0], self[self.length - i + 1]
      BinaryMinHeap.heapify_down(self, 0, self.length - i + 1, &prc)
    end

    self
  end
end
