require_relative '../ship'

describe Ship do
  context 'ship' do
    it 'initiates a ship with a starting part' do
      expect(described_class.new('Dover').starting_port).to eq('Dover')
    end

    it 'can set sail' do
      ship = described_class.new('Dover')
      ship.set_sail
      expect(ship.starting_port).to eq('')
    end
  end
end