class BaseStations
  include (Math)
  def initialize
    @base_stations = []
  end

  def add_base_station(base_station)
    @base_stations.push(base_station)
  end

  def distance(base_station_cell, grid_cell)
    distance = 0

    distance = Math.sqrt((base_station_cell.x_center - grid_cell.x_center)**2 + (base_station_cell.y_center - grid_cell.y_center)**2)
  end

  def to_s
    str = @base_stations.inject(""){|str, station| str + station.to_s}
  end
end