require_relative '../port'

describe Port do
  before(:each) do
    @dover = described_class.new('Dover')
  end

  context 'port' do
    it 'initiates a port with a name' do
      expect(@dover.name).to eq('Dover')
    end

    it 'adds a ship to a port' do
      ship = {}

      @dover.add_ship(ship)
      expect(@dover.ships).to include(ship)
    end

    it 'removes a ship from a port' do
      titanic = {ship: 'Titanic'}
      queenMary = {ship: 'Queen Mary'}

      @dover.add_ship(titanic)
      @dover.add_ship(queenMary)
      @dover.remove_ship(titanic)
 
      expect(@dover.ships).to_not include(titanic)
      expect(@dover.ships).to eq([queenMary])
    end
  end
end