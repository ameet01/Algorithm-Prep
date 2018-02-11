

#levenstein distance

def levenstein_distance(str1, str2)
  array = [[-1] * str2.length] * str1.length
  compute_distance(str1.length - 1, str2.length - 1, array, str1, str2)
end

def compute_distance(a_idx, b_idx, array, str1, str2)
  return b_idx + 1 if a_idx < 0
  return a_idx + 1 if b_idx < 0
  if array[a_idx][b_idx] == -1
    if str1[a_idx] == str2[b_idx]
      array[a_idx][b_idx] = compute_distance(a_idx - 1, b_idx - 1, array, str1, str2)
    else
      array[a_idx][b_idx] = 1 + [compute_distance(a_idx-1, b_idx, array, str1, str2), compute_distance(a_idx-1, b_idx-1, array, str1, str2), compute_distance(a_idx, b_idx-1, array, str1, str2)].min
    end
  end
  return array[a_idx][b_idx]
end


def lev_iter(s, t)
  m = s.length
  n = t.length
  return m if n == 0
  return n if m == 0
  d = Array.new(m+1) {Array.new(n+1)}

  (0..m).each {|i| d[i][0] = i}
  (0..n).each {|j| d[0][j] = j}
    p d
  (1..n).each do |j|
    (1..m).each do |i|
      d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
                  d[i-1][j-1]       # no operation required
                else
                  [ d[i-1][j]+1,    # deletion
                    d[i][j-1]+1,    # insertion
                    d[i-1][j-1]+1,  # substitution
                  ].min
                end
    end
  end
  d[m][n]
end


p lev_iter('saturday', 'sunday')