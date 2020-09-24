class Ship
  attr_accessor :itinerary, :current_port, :previous_port
  def initialize(itinerary)
    @itinerary = itinerary
    @current_port = itinerary.ports[0]
    @previous_port = nil
  end

  def set_sail
    @previous_port = @current_port
    @current_port = ''
  end

  def dock
    index = @itinerary.ports.index(@previous_port)
    @current_port = @itinerary.ports[index + 1]
  end
end