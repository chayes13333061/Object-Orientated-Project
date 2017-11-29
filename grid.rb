require_relative 'cell.rb'

class Grid

  attr_reader :grid

  def initialize(x_max, y_max)
    @grid = Array.new(x_max){Array.new(y_max)}

    x_max.times do |x|
      y_max.times do |y|
        @grid[x][y] = Cell.new(x, y)
      end
    end
  end
end