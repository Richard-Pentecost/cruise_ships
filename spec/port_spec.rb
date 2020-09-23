require_relative '../port'

describe Port do
  context 'port' do
    it 'initiates a port with a name' do
      calais = described_class.new('Calais')
      expect(calais.name).to eq('Calais')
    end
  end
end