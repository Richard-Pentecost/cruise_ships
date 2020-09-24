require_relative '../port'
require_relative '../ship'
require_relative '../itinerary'

describe Port do
  context 'port' do
    it 'initiates a port with a name' do
      calais = described_class.new('Calais')
      expect(calais.name).to eq('Calais')
    end

    it 'adds ships to the port' do
      dover = described_class.new('Dover')
      calais = described_class.new('Calais')
      portsmouth = described_class.new('Portsmouth')
      itinerary = Itinerary.new([dover, calais, portsmouth])
      ship = Ship.new(itinerary)
      ship.set_sail
      ship.dock
      calais.add_ship(ship)
      expect(calais.ships).to include(ship)
    end
  end
end