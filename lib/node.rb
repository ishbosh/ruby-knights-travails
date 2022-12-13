# frozen_string_literal: true

# class for each node/vertex in the graph
class Node
  attr_accessor :steps, :predecessor, :neighbors
  attr_reader :coordinates

  def initialize(coordinates, moves)
    @coordinates = coordinates
    @moves = moves
    @neighbors = nil
    @steps = nil
    @predecessor = nil
  end

  def neighbor_nodes
    neighbors_coords(@coordinates).map { |coord| Node.new(coord, @moves) }
  end

  def neighbors_coords(coordinates)
    bounds = *(0..7)
    valid_neighbors = []
    @moves.each do |move|
      x_coord = coordinates[0] + move[0]
      y_coord = coordinates[1] + move[1]
      valid_neighbors << [x_coord, y_coord] if bounds.include?(x_coord) && bounds.include?(y_coord)
    end
    valid_neighbors
  end
end
