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

    @weak_coverage = []
    @medium_coverage = []
    @strong_coverage = []

  end

  def coverage_categories
    @grid.each_with_index do |x, xi|
      x.each_with_index do |y, yi|
        if @grid[xi][yi].coverage == :strong
          @strong_coverage.push(y)
        elsif @grid[xi][yi].coverage == :medium
          @medium_coverage.push(y)
        else
          @weak_coverage.push(y)
        end
      end
    end
  end

  def to_s
    str = ""
    str += "number of cells with weak coverage: #{@weak_coverage.size}\n"
    str += "number of cells with medium coverage: #{@medium_coverage.size}\n"
    str += "number of cells with strong coverage: #{@strong_coverage.size}\n"
    str += @weak_coverage.inject(""){|str, cell| str + cell.to_s}
    str += "\n"
    str += @medium_coverage.inject(""){|str, cell| str + cell.to_s}
    str += "\n"
    str += @strong_coverage.inject(""){|str, cell| str + cell.to_s}
  end
end