class Ship
  attr_accessor :itinerary, :current_port, :previous_port
  def initialize(itinerary)
    @itinerary = itinerary
    @current_port = itinerary.ports[0]
    @previous_port = nil
  end

  def set_sail
    if itinerary.ports.index(@current_port) == itinerary.ports.length - 1
      raise Exception.new 'End of itinerary reached'
    end
    @previous_port = @current_port
    @current_port = ''
  end

  def dock
    index = @itinerary.ports.index(@previous_port)
    @current_port = @itinerary.ports[index + 1]
  end
end