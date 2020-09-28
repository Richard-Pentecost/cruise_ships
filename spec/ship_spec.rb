require_relative '../ship'
require_relative '../port'
require_relative '../itinerary'

describe Ship do
  before(:each) do
    @dover = Port.new('Dover')
    @calais = Port.new('Calais')
    itinerary = Itinerary.new([@dover, @calais])
    @ship = described_class.new(itinerary)
  end

  context 'ship' do
    it 'initiates a ship with a starting port' do
      expect(@ship.current_port).to be(@dover)
    end

    it 'gets added to a port on instantiation' do
      expect(@dover.ships).to include(@ship)
    end

    it 'initiates a ship with a previous port of nil' do
      expect(@ship.previous_port).to eq(nil)
    end

    it 'can set sail' do
      @ship.set_sail

      expect(@ship.previous_port).to be(@dover)
      expect(@ship.current_port).to eq('')
      expect(@dover.ships).to_not include(@ship)
    end

    it 'can dock at a different port' do
      @ship.set_sail
      @ship.dock

      expect(@ship.current_port).to be(@calais)
      expect(@calais.ships).to include(@ship)
    end

    it "can't sail further than it's last port in the itinerary" do
      # dover = Port.new('Dover')
      # calais = Port.new('Calais')
      # itinerary = Itinerary.new([dover, calais])
      # ship = described_class.new(itinerary)

      @ship.set_sail
      @ship.dock

      expect{ @ship.set_sail }.to raise_error(Exception)
    end


  end
end
