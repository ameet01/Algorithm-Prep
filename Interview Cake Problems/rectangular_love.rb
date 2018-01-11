

def find_overlap(pt1, length1, pt2, length2)
  highest_starting_point = [pt1, pt2].max
  lowest_end_point = [pt1 + length1, pt2 + length2].min
  
  return [nil, nil] if highest_starting_point >= lowest_end_point

  overlap = lowest_end_point - highest_starting_point

  return [highest_starting_point, overlap]
end

def rectangular_love(rect1, rect2)
  x_point, x_width = find_overlap(rect1.left_x, rect1.width, rect2.left_x, rect2.width)
  y_point, y_width = find_overlap(rect1.bottom_y, rect1.height, rect2.bottom_y, rect2.height)

  if !x_width || !y_width
    return {
      'left_x' => nil,
      'bottom_y' => nil,
      'width' => nil,
      'height' => nil,
    }
  end

  return {
    'left_x' => x_point,
    'bottom_y' => y_point,
    'width' => x_width,
    'height' => y_width,
  }
end


