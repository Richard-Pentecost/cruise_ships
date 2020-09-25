class Ship
  attr_accessor :itinerary, :current_port, :previous_port
  def initialize(itinerary)
    @itinerary = itinerary
    @current_port = itinerary.ports[0]
    @previous_port = nil
    @current_port.add_ship(self)
  end

  def set_sail
    currentPortIndex = itinerary.ports.index(@current_port)
    if currentPortIndex == itinerary.ports.length - 1
      raise Exception.new 'End of itinerary reached'
    end
    @previous_port = @current_port
    @previous_port.remove_ship(self)
    @current_port = ''
  end

  def dock
    index = @itinerary.ports.index(@previous_port)
    @current_port = @itinerary.ports[index + 1]
    @current_port.add_ship(self)
  end
end