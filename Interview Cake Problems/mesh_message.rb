
network = {
  'Min'     => ['William', 'Jayden', 'Omar'],
  'William' => ['Min', 'Noam'],
  'Jayden'  => ['Min', 'Amelia', 'Ren', 'Noam'],
  'Ren'     => ['Jayden', 'Omar'],
  'Amelia'  => ['Jayden', 'Adam', 'Miguel'],
  'Adam'    => ['Amelia', 'Miguel', 'Sofia', 'Lucas'],
  'Miguel'  => ['Amelia', 'Adam', 'Liam', 'Nathan'],
  'Noam'    => ['Nathan', 'Jayden', 'William'],
  'Omar'    => ['Ren', 'Min', 'Scott']
}



def shortest_path_bfs(graph, start_node, end_node)
  queue = [start_node]
  result = []
  how_we_reached_nodes = {
    start_node => nil
  }

  until queue.empty?
    node = queue.shift

    if node == end_node
      current = end_node
      result << end_node
      until !current
        result << current
        current = how_we_reached_nodes[current]
      end
      return result.reverse
    end

    node.neighbors.each do |i|
      if !how_we_reached_nodes[i]
        queue.push(i)
        how_we_reached_nodes[i] = node
      end
    end
  end
end