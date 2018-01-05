class QuickSort
  # Quick sort has average case time complexity O(nlogn), but worst
  # case O(n**2).

  # Not in-place. Uses O(n) memory.
  def self.sort1(array)
    return array if array.length <= 1

    pivot = array[0]

    left = QuickSort.sort1(array[1..-1].select { |i| i < pivot})
    right = QuickSort.sort1(array[1..-1].select { |j| j >= pivot})

    left + [pivot] + right
  end

  # In-place.
  def self.sort2!(array, start = 0, length = array.length, &prc)
    return array if length <= 1
    prc ||= Proc.new { |a, b| a <=> b }
    pivot = self.partition(array, start, length, &prc)
    self.sort2!(array, start, pivot - start, &prc)
    self.sort2!(array, pivot + 1, length - (pivot - start + 1), &prc)
    array
  end

  def self.partition(array, start, length, &prc)
    prc ||= Proc.new { |a, b| a <=> b }

    pivot = array[start]
    split_point = start

    ((start+1)...(start + length)).each do |i|
      if(prc.call(array[i], pivot) == -1)
        array[split_point + 1], array[i] = array[i], array[split_point + 1]
        split_point += 1
      end
    end

    array[start], array[split_point] = array[split_point], array[start]
    split_point
  end


end