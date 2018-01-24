

#find smallest subarray sequentially covering subset


def find_smallest_subarray_covering_subset(paragraph, keywords)
  hash = Hash.new

  keywords.each_with_index do |i, j|
    hash[i] = j
  end

  latest_occurrence = [-1] * keywords.length
  shortest_sub_array_length  = [Float::INFINITY] * keywords.length
  shortest_distance = Float::INFINITY
  result = [-1, -1]

  (0...paragraph.length).each do |i|
    if hash.key?(paragraph[i])
      keyword_index = hash[paragraph[i]]

      if keyword_index == 0
        shortest_sub_array_length[keyword_index] = 1
      elsif shortest_sub_array_length[keyword_index - 1] != Float::INFINITY
        distance_to_previous_keyword = i - latest_occurrence[keyword_index - 1]
        shortest_sub_array_length[keyword_index] = distance_to_previous_keyword + shortest_sub_array_length[keyword_index - 1]
      end

      latest_occurrence[keyword_index] = i

      if (keyword_index == keywords.length - 1) && shortest_sub_array_length[-1] < shortest_distance
        shortest_distance = shortest_sub_array_length[-1]
        result = [i - shortest_distance + 1, i]
      end
    end

  end

  result
end

p find_smallest_subarray_covering_subset('hello there good sir my name is ameet'.split(' '), ['good', 'name'])


























