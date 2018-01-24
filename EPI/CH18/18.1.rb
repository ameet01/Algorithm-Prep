
MAZE = [
  ["WHITE", "WHITE", "WHITE", "WHITE"],
  ["WHITE", "BLACK", "BLACK", "WHITE"],
  ["WHITE", "BLACK", "WHITE", "WHITE"],
  ["WHITE", "WHITE", "WHITE", "WHITE"],
]
#Search a maze

def maze_solver(maze, destination, start)
  result = []
  dfs!(maze, [], result, start, destination)
  result
end


def dfs!(maze, path, result, current, destination)
  return if !((0..maze.length-1).include?(current[0]) && (0..maze.length-1).include?(current[1]) && maze[current[0]][current[1]] == 'WHITE' )
  maze[current[0]][current[1]] = 'BLACK'
  path << current
  if current == destination
    result << path.dup
    return
  end

  dirs = [[0,-1], [0,1], [1,0], [-1, 0]]
  dirs.each do |position|
    x = position[0]
    y = position[1]
    dfs!(maze, path.dup, result, [current[0] + x, current[1] + y], destination)
  end
end

#iterative
def dfs_iter!(maze, destination, start)
  stack = [[start, false]]
  result = false
  dirs = [[0,-1], [0,1], [1,0], [-1, 0]]

  until stack.empty? || result == true
    position = stack.pop
    hash[position.to_s] = 1
    side_positions = []
    dirs.each do |x, y|
      x_pos = position[0] + x
      y_pos = position[1] + y
      if x_pos >= 0 && x_pos <= 2 && y_pos >= 0 && y_pos <= 2
        if maze[x_pos][y_pos] == 'WHITE' && !hash.key?(([[x_pos][y_pos]]).to_s)
          side_positions << [x_pos, y_pos] 
        end
      end
    end

    side_positions.each do |i|
      if i == destination
        result = true 
      end
      stack.push(i)
    end
  end

  result
end





p maze_solver(MAZE, [3,3], [0,0])