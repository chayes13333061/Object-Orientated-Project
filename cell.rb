class Cell
  attr_reader :x, :y, :x_center, :y_center, :coverage

  def initialize(x_coordinate, y_coordinate)
    @x = x_coordinate
    @x_center = @x - 0.5
    @y = y_coordinate
    @y_center = @y - 0.5
    @coverage = nil
  end

  def assign_coverage_to_cell(distance)
    coverage_number = Float(1/(1 + distance))
    #puts coverage_number
    if coverage_number > 0.3
      @coverage = :strong
    elsif coverage_number <= 0.3 and coverage_number > 0.1
      @coverage = :medium
    else
      @coverage = :weak
    end
  end

  def to_s
    str = "(#{@x},#{@y})"
  end
end