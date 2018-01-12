

def color_graph(graph, colors)

  graph.each do |node|
    raise 'exception' if node.neighbors.include?(node)

    illegal_colors = Hash.new

    node.neighbors.each do |neighbor|
      illegal_colors[neighbor.color] = true
    end

    colors.each do |color|
      if !illegal_colors[color]
        node.color = color
        break
      end
    end
  end
end