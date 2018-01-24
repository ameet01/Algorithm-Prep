

MAZE = [
  ["BLACK", "BLACK", "BLACK", "WHITE"],
  ["BLACK", "BLACK", "WHITE", "BLACK"],
  ["BLACK", "BLACK", "BLACK", "BLACK"],
  ["BLACK", "BLACK", "BLACK", "BLACK"],
]

def bfs!(maze, start)
  queue = [start]
  dirs = [[0,1],[0,-1],[1,0],[-1,0]]
  color = ''
  if maze[start[0]][start[1]] == 'BLACK'
    color = 'BLACK'
    other = 'WHITE'
  else  
    color = 'WHITE'
    other = 'BLACK'
  end

  until queue.empty?
    pos = queue.shift
    maze[pos[0]][pos[1]] = other

    sides = []

    dirs.each do |dir|
      sides << [dir[0] + pos[0], dir[1] + pos[1]] if check_index(maze.length, dir[0] + pos[0]) && check_index(maze.length, dir[1] + pos[1]) && maze[dir[0] + pos[0]][dir[1] + pos[1]] == color
    end

    next if sides.empty?

    sides.each do |i|
      queue.push(i.dup)
    end
  end

  maze
end

def check_index(length, n)
  (0...length).include?(n)
end


p bfs!(MAZE, [0,3])