

#Find smallest subarray covering all values


def find_smallest_subarray_covering_all_values(paragraph, keywords)
  hash = Hash.new(0)

  keywords.each do |i|
    hash[i] += 1
  end

  left = 0
  remaining = keywords.length
  result = []

  (0...paragraph.length).each do |right|
    if keywords.include?(paragraph[right])
      hash[paragraph[right]] -= 1
      if hash[paragraph[right]] == 0
        remaining -= 1
      end
    end
 
    while remaining == 0
      if result.empty? || (right - left) < (result[1] - result[0])
        result[0] = left
        result[1] = right
      end

      first = paragraph[left]
      if keywords.include?(first)
        hash[first] += 1
        if hash[first] > 0
          remaining += 1
        end
      end

      left += 1
    end
  end

  result
end

p find_smallest_subarray_covering_all_values('hello there good sir my name is ameet '.split(' '), ['good', 'sir', 'ameet'])