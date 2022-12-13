class Knight
  attr_reader :moves

  def initialize
    @moves = [[-1, 2], [-1, -2], [1, 2], [1, -2], [-2, 1], [-2, -1], [2, 1], [2, -1]]
    @queue = []
  end

  def knight_moves(start_coords, end_coords)
    @current_node = create_start_node(start_coords)
    @end_coords = end_coords
    until at_end?
      generate_neighbors
      add_neighbors_to_queue
      update_current_node
    end
    @queue.clear
    show_results(@current_node)
  end

  def create_start_node(start_coords)
    start_node = Node.new(start_coords, @moves)
    start_node.steps = 0
    start_node
  end

  def generate_neighbors
    @current_node.neighbors = @current_node.neighbor_nodes if @current_node.neighbors.nil?
  end

  def add_neighbors_to_queue
    @current_node.neighbors.each do |neighbor| 
      if neighbor.steps.nil?
        enqueue(neighbor)
        neighbor.predecessor = @current_node
        neighbor.steps = neighbor.predecessor.steps + 1
      end
      return @current_node = neighbor if at_end?

    end
  end

  def update_current_node
    @current_node = dequeue unless at_end?
  end

  def enqueue(node)
    @queue.push(node)
  end

  def dequeue
    @queue.shift
  end

  def at_end?
    @current_node.coordinates.eql?(@end_coords)
  end

  def show_results(node)
    puts "You made it in #{@current_node.steps} moves! Your path was: "
    path = []
    until node.predecessor.nil?
      path << node.predecessor.coordinates
      node = node.predecessor
    end
    path.reverse.each { |node| p node }
    p @current_node.coordinates # print the end node last
  end
end
