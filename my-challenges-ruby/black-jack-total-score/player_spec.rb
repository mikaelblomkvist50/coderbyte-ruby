describe Player do
  describe '#total' do
    it 'adds up to 16' do
      player = Player.new(Card.new(:heart, 'J'), Card.new(:heart, '6'))
      expect(player.total).to eq 16
    end
  end

  describe '#total' do
    it 'adds up to 14' do
      player = Player.new(Card.new(:heart, '9'), Card.new(:heart, '5'))
      expect(player.total).to eq 16
    end
  end
end
