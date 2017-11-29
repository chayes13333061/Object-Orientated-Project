class Cell
  attr_reader :x, :y

  def initialize(x_coordinate, y_coordinate)
    @x = x_coordinate
    @y = y_coordinate
    @coverage = nil
  end

  # Return center of grid coordinates for distance calculation
  def x_center
    x = @x - 0.5
  end

  def y_center
    y = @y - 0.5
  end

  def coverage(distance)
    @coverage = (1/(1 + distance))
  end
end