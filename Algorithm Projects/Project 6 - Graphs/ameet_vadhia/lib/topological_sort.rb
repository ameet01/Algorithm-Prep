require_relative 'graph'
require 'set'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)
  queue = []
  result = []

  vertices.each do |vertex|
    if vertex.in_edges.empty?
      queue.push(vertex)
    end
  end

  until queue.empty?
    vertex = queue.shift
    result << vertex

    vertex.out_edges.dup.each do |edge|
      if edge.to_vertex.in_edges.length == 1
        queue.push(edge.to_vertex) 
      end
      edge.destroy!
    end
  end
 
  if vertices.length == result.length
    return result
  else
    return []
  end
end


def topological_sort_tarjans(vertices)
  ordering = []
  explored = Set.new

  vertices.each do |vertex|
    dfs!(vertex, explored, ordering) if !explored.include?(vertex)
  end

  ordering
end

def dfs!(vertex, explored, ordering)
  explored.add(vertex)

  vertex.out_edges.each do |edge|
    new_vertex = edge.to_vertex
    dfs!(new_vertex, explored, ordering) if !explored.include?(new_vertex)
  end

  ordering.unshift(vertex)
end



[2,3,4,5]

[1 * 3 * 4 * 5, 1 * 2 * 4 * 5, 1 * 2 * 3 * 5, 1 * 2 * 3 * 4]