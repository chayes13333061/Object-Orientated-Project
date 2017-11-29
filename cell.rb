class Cell
  attr_reader :x, :y, :x_center, :y_center

  def initialize(x_coordinate, y_coordinate)
    @x = x_coordinate
    @x_center = @x - 0.5
    @y = y_coordinate
    @y_center = @y - 0.5
    @coverage = nil
  end

  def coverage(distance)
    @coverage = (1/(1 + distance))
  end
end