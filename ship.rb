class Ship
  attr_accessor :current_port, :previous_port
  def initialize(port)
    @current_port = port
    @previous_port = nil
  end

  def set_sail
    @previous_port = @current_port
    @current_port = ''
  end

  def dock(port)
    @current_port = port
  end
end