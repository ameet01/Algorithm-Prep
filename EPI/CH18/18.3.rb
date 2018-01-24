


MAZE = [
  ["BLACK", "BLACK", "BLACK", "BLACK"],
  ["WHITE", "BLACK", "WHITE", "BLACK"],
  ["BLACK", "WHITE", "WHITE", "BLACK"],
  ["BLACK", "BLACK", "BLACK", "BLACK"],
]


def compute_enclosed_regions(maze, color)
  queue = Queue.new

  dirs = [[0,1],[0,-1],[1,0],[-1,0]]

  (0...maze.length).each do |i|
    (0...maze.length).each do |j|
      queue.push([i, j]) if [0,maze.length].include?(i) || [0,maze.length].include?(j)
    end
  end

  until queue.empty?
    position = queue.deq

    if maze[position[0]][position[1]] == color && (0...maze.length).include?(position[0]) && (0...maze.length).include?(position[1])
      maze[position[0]][position[1]] = 'VISITED'
      dirs.each do |dir|
        queue << [position[0] + dir[0], position[1] + dir[1]]
      end
    end
  end

  (0...maze.length).each do |i|
    (0...maze.length).each do |j|
      if maze[i][j] != 'VISITED'
        maze[i][j] = 'BLACK'
      else
        maze[i][j] = 'WHITE'
      end
    end
  end

  maze
end

p compute_enclosed_regions(MAZE, 'WHITE')