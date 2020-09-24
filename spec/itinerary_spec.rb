require_relative '../itinerary'
require_relative '../port'

describe Itinerary do
  context 'itinerary' do
    it 'has a list of ports' do
      dover = Port.new('Dover')
      calais = Port.new('Calais')
      ports = [dover, calais]
      expect(Itinerary.new(ports).ports).to eq([dover, calais])
    end
  end
end