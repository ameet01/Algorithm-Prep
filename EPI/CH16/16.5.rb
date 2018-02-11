

#search for a sequence in a 2d array

grid = [
  [1,2,3],
  [3,4,5],
  [5,6,7]
]

def sequence(grid, pattern)
  result = [false]
  (0...grid.length).each do |i|
    (0...grid[0].length).each do |j|
      dfs!(grid, [], [i,j], pattern, result) 
      return result[0] if result[0] == true
    end
  end
  false
end

def dfs!(grid, path, current, pattern, result)
  p path
  return if !(0...grid.length).include?(current[0]) || !(0...grid[0].length).include?(current[1]) 
  return if path.length > pattern.length
  if pattern == path
    result[0] = true
    return
  end
  path.push(grid[current[0]][current[1]])
  dirs = [[0,1],[0,-1],[1,0],[-1,0]]

  dirs.each do |dir|
    one = dir[0]
    two = dir[1]
    dfs!(grid, path.dup, [current[0] + one, current[1] + two], pattern, result)
  end
end


p sequence(grid, [7,3])