describe Card do
  let(:first_card) {Card.new('Diamond', 'A')}
  let(:second_card) {Card.new('Spade', '3')}

  describe "initialize" do
    it "initializes a card object" do
      expect(first_card).to have_attributes(suit: 'Diamond', rank: 'A')
      expect(second_card).to have_attributes(suit: 'Spade', rank: '3')
    end
  end

  describe '#score' do
    it 'has a valid score' do
      expect(Card.new('Heart', 'A').score).to eq 1
      expect(Card.new('Diamond', '2').score).to eq 2
      expect(Card.new('Spade', '9').score).to eq 9
      expect(Card.new('Club', '10').score).to eq 10
      expect(Card.new('Heart', 'J').score).to eq 10
      expect(Card.new('Diamond', 'Q').score).to eq 10
      expect(Card.new('Spade', 'K').score).to eq 10
      expect(Card.new('Spade', 'A').score).to eq 1
    end
  end

end
