class Ship
  attr_accessor :current_port
  def initialize(port)
    @current_port = port
  end

  def set_sail
    @current_port = ''
  end

  def dock(port)
    @current_port = port
  end
end