require_relative '../ship'
require_relative '../port'
require_relative '../itinerary'

describe Ship do
  context 'ship' do
    it 'initiates a ship with a starting port' do
      dover = Port.new('Dover')
      calais = Port.new('Calais')
      itinerary = Itinerary.new([dover, calais])
      ship = described_class.new(itinerary)

      expect(ship.current_port).to be(dover)
    end

    it 'initiates a ship with a previous port of nil' do
      dover = Port.new('Dover')
      calais = Port.new('Calais')
      itinerary = Itinerary.new([dover, calais])
      ship = described_class.new(itinerary)

      expect(ship.previous_port).to eq(nil)
    end

    it 'can set sail' do
      dover = Port.new('Dover')
      calais = Port.new('Calais')
      itinerary = Itinerary.new([dover, calais])
      ship = described_class.new(itinerary)

      ship.set_sail

      expect(ship.previous_port).to be(dover)
      expect(ship.current_port).to eq('')
    end

    it 'can dock at a different port' do
      dover = Port.new('Dover')
      calais = Port.new('Calais')
      itinerary = Itinerary.new([dover, calais])
      ship = described_class.new(itinerary)

      ship.set_sail
      ship.dock

      expect(ship.current_port).to be(calais)
    end
  end
end