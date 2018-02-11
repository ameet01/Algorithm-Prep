

#count # of score combinations


def score_combinations_football(final_score, scores)
  dfs!(scores, [], 0, final_score)
end

def dfs!(scores, path, index, target)
  return 0 if target < 0
  if target == 0
    return 1
  end
  count = 0
  (index...scores.length).each do |i|
    count += dfs!(scores, path + [scores[i]], i, target - scores[i])
  end
  count
end









def score_combinations_football2(final_score, scores)
  result = [0] * final_score

  result[0] = [[]]
  result[1] = [[]]
  result[2] = [[2]]
  result[3] = [[3]]

  (4...result.length+1).each do |i|
    array = []
    scores.each do |score|
      if score < i
        result[i-score].each do |j|
          score_array = ([score] + j).sort
          array << score_array if score_array.reduce(:+) == i && !array.include?(score_array)
        end
      end
    end
    result[i] = array
  end

  result.last
end

p score_combinations_football(12, [2,3,7])