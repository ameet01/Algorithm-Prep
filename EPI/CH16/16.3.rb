

#count # of ways to traverse a 2d array

grid = 
[
[0,0,0],
[0,0,0],
[0,0,0]
]

#recursive
def num_of_paths(grid, start, destination)
  dfs!(grid, start, destination)
end

def dfs!(grid, current, destination)
  return 0 if !(0...grid.length).include?(current[0]) || !(0...grid[0].length).include?(current[1])
  return 1 if current == destination
  count = 0
  dirs = [[1,0],[0,1]]
  dirs.each do |dir|
    x = dir[0]
    y = dir[1]
    count += dfs!(grid, [current[0] + x, current[1] + y], destination)
  end
  count
end



def num_of_paths2(n, m)
  array = [[0] * m] * n
  helper(n-1, m-1, array)
end

def helper(n, m, array)
  return 1 if n == 0 && m == 0

  if n == 0
    top = 0
  else
    top = helper(n - 1, m, array)
  end

  if m == 0
    left = 0
  else
    left = helper(n, m - 1, array)
  end

  array[n][m] = top + left
  return array[n][m]
end


p num_of_paths2(3,3)