class Port 
  attr_accessor :name, :ships
  def initialize(name)
    @name = name
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def remove_ship(ship)
    ship_index = ships.index(ship)
    ships.delete_at(ship_index)
  end
end