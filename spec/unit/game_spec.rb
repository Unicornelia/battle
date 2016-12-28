require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }

  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  it { is_expected.to respond_to :taking_turns }
  # RR - how useful is this test? We're checking that the method taking_turns
  # exists in the Game class, but for all we know it prints out "POTATOPOTATOPOTATO"

  # RR - there are some untested methods on Game. Probably some of those
  # are also uneccessary (see my comments there). Developing the class with
  # stricter TDD would force you think more carefully about your class' API
  # and help prevent having untested code as well as making it much less
  # likely to create superflous methods and attr_readers.
end
