require_relative 'cell.rb'

class BaseStation
  def initialize(name, cell)
    @name = name
    @cell = cell
  end

  def to_s
    str = ""
    str += "#{@name} (#{@cell.x}, #{@cell.y})"
  end
end