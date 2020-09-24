class Port 
  attr_accessor :name, :ships
  def initialize(name)
    @name = name
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end
end