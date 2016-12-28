require 'player'
require 'spec_helper'

describe Player do

  subject(:anna) { Player.new('A') }
  subject(:life) { Player.new('B') }

  describe '#name' do
    it 'returns a players name' do
      expect(anna.name).to eq 'A'
    end
  end

  describe '#hp_points' do
    it 'checks that player has HP points' do
      expect(anna.health_points).to eq described_class::INITIAL_HP
    end
  end
end
