require_relative '../ship'
require_relative '../port'

describe Ship do
  context 'ship' do
    it 'initiates a ship with a starting part' do
      dover = Port.new('Dover')
      ship = described_class.new(dover)
      expect(ship.current_port).to be(dover)
    end

    it 'can set sail' do
      dover = Port.new('Dover')
      ship = described_class.new(dover)
      ship.set_sail
      expect(ship.current_port).to eq('')
    end

    it 'can dock at a different port' do
      dover = Port.new('Dover')
      ship = described_class.new(dover)

      calais = Port.new('Calais')
      ship.dock(calais)
      
      expect(ship.current_port).to be(calais)
    end
  end
end