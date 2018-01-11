

def top_scores(scores, highest_possible_score)
  score_counts = [0] * (highest_possible_score+1)
  result = []

  scores.each do |i|
    score_counts[i] += 1
  end

  (1..highest_possible_score).each do |i|
    score_counts[i].times do |j|
      result.unshift(i)
    end
  end

  result
end

p top_scores([44,89,55,66,97,55,87,43,21,97], 100)