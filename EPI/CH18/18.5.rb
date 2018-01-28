
require 'pp'

#clone graph

class GraphNode
  attr_accessor :label, :edges
  def initialize(label)
    @label = label
    @edges = []
  end
end


def clone_graph(vertex)
  queue = [vertex]
  cloned_graph = {vertex => GraphNode.new(vertex.label)}

  until queue.empty?
    v = queue.shift

    v.edges.each do |vert|
      if !cloned_graph[vert]
        cloned_graph[vert] = GraphNode.new(vert.label)
        queue.push(vert)
      end
      cloned_graph[v].edges << cloned_graph[vert]
    end
  end

  cloned_graph[vertex]
end


one = GraphNode.new('one')
two = GraphNode.new('two')
three = GraphNode.new('three')
four = GraphNode.new('four')
five = GraphNode.new('five')

one.edges << two
one.edges << three
one.edges << four
one.edges << five
two.edges << three

p clone_graph(one)