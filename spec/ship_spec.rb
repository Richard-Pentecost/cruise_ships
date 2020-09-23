require_relative '../ship'

describe Ship do
  context 'ship' do
    it 'initiates a ship with a starting part' do
      expect(described_class.new('Dover').starting_port).to eq('Dover')
    end
  end
end