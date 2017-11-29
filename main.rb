require_relative 'base_stations.rb'
require_relative 'base_station.rb'
require_relative 'cell.rb'

class Main

  base_stations = BaseStations.new

  begin
    IO.foreach('base_stations.txt') do |line|
      data = line.split
      name = data[0].to_s
      x = data[1].to_i
      y = data[2].to_i

      base_stations.add_base_station(BaseStation.new(name, Cell.new(x, y )))
    end
  end

  puts base_stations.to_s

  cell1 = Cell.new(0, 0 )
  cell2 = Cell.new(2, 2 )
  puts base_stations.distance(cell1, cell2)
end