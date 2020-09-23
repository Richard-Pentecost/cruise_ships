class Ship
  attr_accessor :starting_port
  def initialize(port)
    @starting_port = port
  end

  def set_sail
    @starting_port = ''
  end
end