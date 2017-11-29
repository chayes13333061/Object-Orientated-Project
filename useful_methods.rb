module UsefulMethods

  def self.distance(base_station_cell, grid_cell)
   distance = 0
   distance = Math.sqrt((base_station_cell.x_center - grid_cell.x_center)**2 + (base_station_cell.y_center - grid_cell.y_center)**2)
  end

  def self.find_nearest_station(grid_cell, base_stations)
    smallest_distance = 1000000000

    base_stations.each do |station|
      if UsefulMethods.distance(station.cell, grid_cell) < smallest_distance
        smallest_distance = UsefulMethods.distance(station.cell, grid_cell)
      end
    end
  end
end