module UsefulMethods



  def self.distance(base_station_cell, grid_cell)
   distance = 0
   distance = Math.sqrt((base_station_cell.x_center - grid_cell.x_center)**2 + (base_station_cell.y_center - grid_cell.y_center)**2)
  end

  def self.nearest_station_distance(grid_cell, base_stations)
    smallest_distance = 1000000000

    base_stations.each do |station|
      if station.cell.x == grid_cell.x and station.cell.y == grid_cell.y
        next
      elsif UsefulMethods.distance(station.cell, grid_cell) < smallest_distance
        smallest_distance = UsefulMethods.distance(station.cell, grid_cell)
      else
        next
      end
    end
    smallest_distance
  end
end