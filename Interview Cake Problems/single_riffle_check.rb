

def is_single_riffle(half1, half2, shuffled_cards)
  half1_index = 0
  half2_index = 0

  shuffled_cards.each do |i|
    if half1_index < half1.length-1 && half1[half1_index] == i
      half1_index += 1
    elsif half2_index < half2.length-1 && half2[half2_index] == i
      half2_index += 1
    else
      return false
    end
  end

  return true
end