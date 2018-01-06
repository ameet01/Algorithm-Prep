class Array
  
  def kth_smallest(k, start = 0, length = self.length)
    return self if length < 2
    
    pivot = partition(self, start, length)
 
    if k - 1 < pivot
      kth_smallest(k, start, pivot - start)
    elsif k - 1 == pivot
      return self[pivot]
    else
      kth_smallest(k, pivot + 1, length - (pivot - start + 1))
    end
  end
  
  def partition(array, start, length)
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